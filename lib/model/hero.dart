class Heros {
  String imageUrl;
  String heroName;
  String skill;
  String description;
  String videoLink;
  String thumbnailUrl;
  List<Ability> abilities;
  
  Heros({
    this.imageUrl,
    this.heroName,
    this.skill,
    this.description,
    this.videoLink,
    this.thumbnailUrl,
    this.abilities,
    });
}
class Ability{
  String imageUrl;
  String ability;
  Ability({this.imageUrl,this.ability});
}

List<Heros> heros = [
  Heros(
    imageUrl:"asset/bloodhound.png",
    heroName:'BLOODHOUND',
    skill: 'Technological Tracker',
    description:"Bloodhound is known across the Outlands as one of the greatest game hunters the Frontier has ever seen – and that’s about all anyone knows. Their identity is a mystery wrapped in layers of rumors: they are fabulously wealthy, a bloodthirsty murderer, a Goliath whisperer, a former slave, half bat, and a dozen other things depending on who’s doing the whispering",
    videoLink:"https://www.youtube.com/watch?v=euWTbVdRGv0",
    thumbnailUrl:"asset/bloodhound_thumdnail.jpg",
    abilities: [
      Ability(imageUrl: 'asset/Beast of the Hunt.png',ability:"Beast of the Hunt" ),
      Ability(imageUrl: 'asset/Dimensional Rift.png',ability:"Dimensional Rift" ),
      Ability(imageUrl: 'asset/Drone EMP.png',ability:"Drone EMP" ),  
    ]
  ),
  Heros(
    imageUrl:"asset/crypto.png",
    heroName:"CRYPTO",
    skill: "Surveillance Expert",
    description: "Crypto specializes in secrets; he knows how to uncover them, and how to keep them. A brilliant hacker and encryption expert, he uses aerial drones to spy on his opponents in the Apex Arena without being seen. It’s been noted that his drones have a similar design to those created by wanted murderer Tae Joon Park.",
    videoLink: "https://www.youtube.com/watch?v=5_8WHxyW86o",
    thumbnailUrl:"asset/crypto_thumbnail.jpg",
    abilities: [
      Ability(imageUrl: 'asset/Eye of the Allfather.png',ability:"Eye of the Allfather" ),
      Ability(imageUrl: 'asset/Grappling Hook.png',ability:"Grappling Hook" ),
      Ability(imageUrl: 'asset/Insider Knowledge.png',ability:"Insider Knowledge" ),  
    ]
  ),
  Heros(
    imageUrl:'asset/pathfinder.png',
    heroName:'PATHFINIDER',
    skill: "Forward Scout",
    description: "Pathfinder is the picture of optimism, despite his circumstances. A MRVN (Mobile Robotic Versatile eNtity) modified to specialize in location scouting and surveying, he booted up decades ago in an abandoned laboratory with no idea who created him or why. With only his MRVN designation to hint at his identity, Pathfinder eventually set off in search of his creator.",
    videoLink: "https://www.youtube.com/watch?v=kBpc2EaKBcA",
    thumbnailUrl:"asset/pahfinder_thumbnail.jpg",
    abilities: [
      Ability(imageUrl: 'asset/Voices from the Void.png',ability:"Voices from the Void" ),
      Ability(imageUrl: 'asset/Zipline Gun.png',ability:"Zipline Gun" ),
      Ability(imageUrl: 'asset/Tracker.png',ability:"Tracker" ),  
    ]
  ),
  Heros(
    imageUrl:'asset/wraith.png',
    heroName:'WRAITH',
    skill: "Interdimensional Skirmisher",
    description: "Wraith is a whirlwind fighter, able to execute swift and deadly attacks and manipulate spacetime by opening rifts in the fabric of reality — but she has no idea how she got that way. Years ago, she woke up in an IMC Detention Facility for the Mentally Ill with no memory of her life before. She also began hearing a distant voice whispering in her mind that would keep her awake for days on end. Despite nearly driving her insane, once she started to listen and trust it, the voice helped her harness her newfound power of void manipulation and escape the facility.",
    videoLink:"https://www.youtube.com/watch?v=yU_eip8IvQU",
    thumbnailUrl:"asset/wraith_thumbnail.jpg",
    abilities: [
      Ability(imageUrl: 'asset/Into the Void.png',ability:"Into the Void" ),
      Ability(imageUrl: 'asset/Neurolink.png',ability:"Neurolink.png" ),
      Ability(imageUrl: 'asset/Surveillance Drone.png',ability:"Surveillance Drone" ),  
    ]
  ),
];