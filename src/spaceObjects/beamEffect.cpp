#include <SFML/OpenGL.hpp>
#include "beamEffect.h"
#include "spaceship.h"
#include "mesh.h"
#include "main.h"

/// LASEREffect is a LASER weapon fire effect that will fade after 1 seond
/// Example: LASEREffect():setSource(player):setTarget(enemy_ship)
REGISTER_SCRIPT_SUBCLASS(LASEREffect, SpaceObject)
{
    REGISTER_SCRIPT_CLASS_FUNCTION(LASEREffect, setSource);
    REGISTER_SCRIPT_CLASS_FUNCTION(LASEREffect, setTarget);
}

REGISTER_MULTIPLAYER_CLASS(LASEREffect, "LASEREffect");
LASEREffect::LASEREffect()
: SpaceObject(1000, "LASEREffect")
{
    setCollisionRadius(1.0);
    lifetime = 1.0;
    sourceId = -1;
    target_id = -1;

    registerMemberReplication(&sourceId);
    registerMemberReplication(&target_id);
    registerMemberReplication(&sourceOffset);
    registerMemberReplication(&targetOffset);
    registerMemberReplication(&targetLocation, 1.0);
    registerMemberReplication(&hitNormal);
    registerMemberReplication(&LASER_texture);
    registerMemberReplication(&LASER_fire_sound);
    registerMemberReplication(&LASER_fire_sound_power);
}

#if FEATURE_3D_RENDERING
void LASEREffect::draw3DTransparent()
{
    glTranslatef(-getPosition().x, -getPosition().y, 0);
    sf::Vector3f startPoint(getPosition().x, getPosition().y, sourceOffset.z);
    sf::Vector3f endPoint(targetLocation.x, targetLocation.y, targetOffset.z);
    sf::Vector3f eyeNormal = sf::normalize(sf::cross(camera_position - startPoint, endPoint - startPoint));

    ShaderManager::getShader("basicShader")->setUniform("textureMap", *textureManager.getTexture(LASER_texture));
    sf::Shader::bind(ShaderManager::getShader("basicShader"));
    glColor3f(lifetime, lifetime, lifetime);
    {
        sf::Vector3f v0 = startPoint + eyeNormal * 4.0f;
        sf::Vector3f v1 = endPoint + eyeNormal * 4.0f;
        sf::Vector3f v2 = endPoint - eyeNormal * 4.0f;
        sf::Vector3f v3 = startPoint - eyeNormal * 4.0f;
        glBegin(GL_QUADS);
        glTexCoord2f(0, 0);
        glVertex3f(v0.x, v0.y, v0.z);
        glTexCoord2f(0, 1);
        glVertex3f(v1.x, v1.y, v1.z);
        glTexCoord2f(1, 1);
        glVertex3f(v2.x, v2.y, v2.z);
        glTexCoord2f(1, 0);
        glVertex3f(v3.x, v3.y, v3.z);
        glEnd();
    }

    sf::Vector3f side = sf::cross(hitNormal, sf::Vector3f(0, 0, 1));
    sf::Vector3f up = sf::cross(side, hitNormal);

    sf::Vector3f v0(targetLocation.x, targetLocation.y, targetOffset.z);

    float ring_size = Tween<float>::easeOutCubic(lifetime, 1.0, 0.0, 10.0f, 80.0f);
    sf::Vector3f v1 = v0 + side * ring_size + up * ring_size;
    sf::Vector3f v2 = v0 - side * ring_size + up * ring_size;
    sf::Vector3f v3 = v0 - side * ring_size - up * ring_size;
    sf::Vector3f v4 = v0 + side * ring_size - up * ring_size;

    ShaderManager::getShader("basicShader")->setUniform("textureMap", *textureManager.getTexture("fire_ring.png"));
    sf::Shader::bind(ShaderManager::getShader("basicShader"));
    glBegin(GL_QUADS);
    glTexCoord2f(0, 0);
    glVertex3f(v1.x, v1.y, v1.z);
    glTexCoord2f(1, 0);
    glVertex3f(v2.x, v2.y, v2.z);
    glTexCoord2f(1, 1);
    glVertex3f(v3.x, v3.y, v3.z);
    glTexCoord2f(0, 1);
    glVertex3f(v4.x, v4.y, v4.z);
    glEnd();
}
#endif//FEATURE_3D_RENDERING

void LASEREffect::update(float delta)
{
    P<SpaceObject> source, target;
    if (game_server)
    {
        source = game_server->getObjectById(sourceId);
        target = game_server->getObjectById(target_id);
    }else{
        source = game_client->getObjectById(sourceId);
        target = game_client->getObjectById(target_id);
    }
    if (source)
        setPosition(source->getPosition() + rotateVector(sf::Vector2f(sourceOffset.x, sourceOffset.y), source->getRotation()));
    if (target)
        targetLocation = target->getPosition() + sf::Vector2f(targetOffset.x, targetOffset.y);

    if (source && delta > 0 && lifetime == 1.0)
    {
        float volume = 50.0f + (LASER_fire_sound_power * 75.0f);
        float pitch = (1.0f / LASER_fire_sound_power) + random(-0.1f, 0.1f);
        soundManager->playSound(LASER_fire_sound, source->getPosition(), 200.0, 1.0, pitch, volume);
    }
    lifetime -= delta;
    if (lifetime < 0)
        destroy();
}

void LASEREffect::setSource(P<SpaceObject> source, sf::Vector3f offset)
{
    sourceId = source->getMultiplayerId();
    sourceOffset = offset;
    update(0);
}

void LASEREffect::setTarget(P<SpaceObject> target, sf::Vector2f hitLocation)
{
    target_id = target->getMultiplayerId();
    float r = target->getRadius();
    hitLocation -= target->getPosition();
    targetOffset = sf::Vector3f(hitLocation.x + random(-r/2.0, r/2.0), hitLocation.y + random(-r/2.0, r/2.0), random(-r/4.0, r/4.0));

    if (target->hasShield())
        targetOffset = sf::normalize(targetOffset) * r;
    else
        targetOffset = sf::normalize(targetOffset) * random(0, r / 2.0);
    update(0);

    sf::Vector3f hitPos(targetLocation.x, targetLocation.y, targetOffset.z);
    sf::Vector3f targetPos(target->getPosition().x, target->getPosition().y, 0);
    hitNormal = sf::normalize(targetPos - hitPos);
}
