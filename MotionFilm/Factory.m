//
//  Factory.m
//  MotionFilm
//
//  Created by David Kababyan on 11/1/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(void)makeLightingModel
{
    NSString *text1;
    NSString *text2;
    NSString *text3;
    NSString *text4;
    NSString *text5;
    
    UIImage *img1;
    UIImage *img2;
    UIImage *img3;
    UIImage *img4;
    UIImage *img5;
    
    LightingModel *introduction = [[LightingModel alloc] init];
    introduction.name = @"Introduction";
    introduction.title = @"Introduction";
    text1 = @"Light is the \"raw material\" for creating visual images. Everything related to vision is related to light. Whether the medium is still photography, motion film, video or computer-generated images, light forms the basis of everything you see.\nIt is important to think of lighting not as something extra which is added in some situations, but as a fundamental part of all visual media production.";
    img1 = [UIImage imageNamed:@"introLight.jpg"];
    introduction.textArray = @[text1];
    introduction.imageArray = @[img1];
    
    LightingModel *lightingTerminology = [[LightingModel alloc] init];
    lightingTerminology.name = @"Lighting Terminology";
    lightingTerminology.title = @"Lighting Terminology";
    text1 = @"Key Light - The main light on the subject, providing most of the illumination and contrast.\n\nFill Light - A light placed to the side of the subject to fill out shadows and balance the key light.\n\nBack Light - A light placed at the rear of a subject to light from behind.\n\nHard Light - Light directly from a source such as the sun, traveling undisturbed onto the subject being lit.\n\nSoft Light - Light which appears to \"wrap around\" the subject to some degree. Produces less shadows or softer shadows.\n\nSpot Light - A controlled, narrowly focused beam of light.";
    
    img1 = [UIImage imageNamed:@"terminology.jpg"];
    lightingTerminology.textArray = @[text1];
    lightingTerminology.imageArray = @[img1];
    
    LightingModel *lightingEquipment = [[LightingModel alloc] init];
    lightingEquipment.name = @"Lighting Equipment";
    lightingEquipment.title = @"Lighting Equipment";
    text1 = @"Light measure is a tool used to measure light and indicate the ideal exposure setting. Also known as an exposure meter.";
    text2 = @"Reflectors a specially-designed reflective surface used to act as a secondary light source. The board is lightweight and flexible, and is normally folded up for transport in a small carry-case.";
    text3 = @"Gels are materials which are placed in front of a light source to alter it's characteristics, e.g. colour temperature or dispersion (see diffusion gels).";
    text4 =@"Standart studio lights. There are different size and power examples.";
    text5 = @"Tripods used to support lights and hold them in the correct position.";
    
    img1 = [UIImage imageNamed:@"lightmeter.jpg"];
    img2 = [UIImage imageNamed:@"lightreflectors.jpg"];
    img3 = [UIImage imageNamed:@"lightGells.jpg"];
    img4 = [UIImage imageNamed:@"studioLight.gif"];
    img5 = [UIImage imageNamed:@"lightTripod.jpg"];
    
    lightingEquipment.textArray = @[text1, text2, text3, text4, text5];
    lightingEquipment.imageArray = @[img1, img2, img3, img4, img5];
    
    LightingModel *pointLighting = [[LightingModel alloc] init];
    pointLighting.name = @"3 Point Lighting";
    pointLighting.title = @"3 Point Lighting";
    text1 = @"The Three Point Lighting Technique is a standard method used in visual media such as video, film, still photography and computer generated imagery. It is a simple but versatile system which forms the basis of most lighting. \n\nKey Light - This is the main light. It is usually the strongest and has the most influence on the look of the scene. It is placed to one side of the camera/subject so that this side is well lit and the other side has some shadow.";
    text2 = @"Fill Light - This is the secondary light and is placed on the opposite side of the key light. It is used to fill the shadows created by the key.";
    text3 =@"Back Light - The back light is placed behind the subject and lights it from the rear. Its purpose is to provide definition and subtle highlights around the subject's outlines.";
    
    img1 = [UIImage imageNamed:@"key.png"];
    img2 = [UIImage imageNamed:@"fill.png"];
    img3 = [UIImage imageNamed:@"back.png"];
    
    pointLighting.imageArray = @[img1, img2, img3];
    pointLighting.textArray = @[text1, text2, text3];
    
    
    LightingModel *lightEffects = [[LightingModel alloc] init];
    lightEffects.name = @"Light Effects";
    lightEffects.title = @"Light Effects";
    text1 = @"Cold/Warm - You can add to the feeling of coldness or warmth by using additional filters or doubling up on gels. Very blue means very cold, very red/orange means very hot.\n\nMoonlight (or any night-time light) - This is an old standard technique which has become something of a cliché. You can make daytime seem like night by lowering the exposure slightly and adding a blue filter to the camera. However a convincing illusion may require more effort than this you don't want any daytime giveaways such as birds flying through shot. You also need to think about any other lighting which should appear in shot, such as house or street lights.\n\nFirelight - To light a person's face as if they were looking at a fire, try this: Point a redhead with orange gel away from the subject at a large reflector which reflects the light back at the subject. Shake the reflector to simulate firelight (remember to add sound effects as well).\n\nWatching TV - To light a person's face as if they were watching TV, shine a blue light at the subject and wave a piece of cloth or paper in front of the light to simulate flickering.";
    
    lightEffects.textArray = @[text1];
    
    self.lightingModel = @[introduction, lightingTerminology, lightingEquipment, pointLighting, lightEffects];
}

- (void)makeAudioModel
{
    NSString *text1;
    NSString *text2;
    NSString *text3;
    NSString *text4;
    NSString *text5;
    
    UIImage *img1;
    UIImage *img2;
    UIImage *img3;
    UIImage *img4;
    UIImage *img5;
    
    AudioModel *introduction = [[AudioModel alloc] init];
    introduction.name = @"Introduction";
    introduction.title = @"Introduction";
    text1 = @"The microphone (mic) is a ubiquitous piece of equipment. Found in everything from telephones to computers to recording studios, microphones are part of our daily life. \n\nFew people think about the microphone in their telephones, cameras when they use them. All professionals pay careful attention to their microphones whenever they use them. \n\nDont make the mistake that many amateurs make and use whatever mic is at hand (e.g. using a vocal mic for a bass drum). Also, dont make the mistake of assuming that using a microphone is easy. Microphone technique is a learned skill - plugging it in and pointing it isnt always enough. \n\nThe microphone is perhaps the most critical part of the audio chain (assuming that all other components are at least acceptable quality). A good quality microphone will provide you with the basis for excellent audio, whereas a poor quality microphone will mean poor quality audio - no matter how good the rest of the system is.";
    
    img1 = [UIImage imageNamed:@"intro.jpg"];
    
    introduction.textArray = @[text1];
    introduction.imageArray = @[img1];
    
    AudioModel *microphones = [[AudioModel alloc] init];
    microphones.name = @"Microphones";
    microphones.title = @"Microphones";
    text1 = @"Dynamic microphone - know as omni direction mic. This microphone is picking sound from all the sides at same level. Very good at around table discussions, recording of natural sound or for musical events.";
    text2 = @"Cardioid microphone - This microphone is picking sound only from one side of it. The active are is a hearth shape. Good for interviewing a person when the interviewer don’t want to be recorded. Also used sound recording and in radio stations.";
    text3 = @"Shotgun microphone - This mic is picking the sound only from front of the mic. This type of microphones are very powerful, you can record sound even on far distances by just pointing the mic on the subject of interest.";
    text4 = @"Clip mic: These microphones are used for interviews or on TV show . It’s a mini omni direction microphone, which you can clip, on the person.";
    text5 = @"Boom mic - The boom microphone is very popular in film and television production. A directional mic is mounted on a boom arm and positioned just out of camera frame. Booms have the advantage of freeing up subjects from having to worry about microphones. They can move freely without disturbing the sound, and concerns about microphone technique are eliminated.";
    
    img1 = [UIImage imageNamed:@"omniMic.jpg"];
    img2 = [UIImage imageNamed:@"cardioidMic.jpg"];
    img3 = [UIImage imageNamed:@"shotgunMic.jpg"];
    img4 = [UIImage imageNamed:@"clipMic.jpg"];
    img5 = [UIImage imageNamed:@"boomMic.jpg"];
    
    microphones.textArray = @[text1, text2, text3, text4, text5];
    microphones.imageArray = @[img1, img2, img3, img4, img5];
    
    AudioModel *audioConnectors = [[AudioModel alloc] init];
    audioConnectors.name = @"Audio Connectors";
    audioConnectors.title = @"Audio Connectors";
    text1 = @"There are a variety of different audio connectors available. The most common types are 3-pin XLR, RCA, and 6.5mm jacks (also known as ¼\" jacks).";
    img1 = [UIImage imageNamed:@"connectors.png"];
    
    audioConnectors.textArray = @[text1];
    audioConnectors.imageArray = @[img1];
    
    AudioModel *xlrs = [[AudioModel alloc] init];
    xlrs.name = @"3pin XLR";
    xlrs.title = @"3pin XLR";
    text1 = @"3-pin XLR connectors are mainly used for balanced audio signals. Using a balanced signal reduces the risk of inference.\n    •	Pin 1 is the earth (or shield)\n    •	Pin 2 is the +ve (or 'hot')\n    •	Pin 3 is the -ve (or 'cold). \n\nThere are a number of different XLR's - 3pin, 4pin, 5pin etc...";
    
    img1 = [UIImage imageNamed:@"xlr.jpg"];

    xlrs.textArray = @[text1];
    xlrs.imageArray = @[img1];
    
    AudioModel *jack = [[AudioModel alloc] init];
    jack.name = @"6.5mm Jack";
    jack.title = @"¼\" (6.5mm Jack)";
    text1 = @"There are two types of 6.5mm Jacks: Mono and stereo. The mono jack has a tip and a sleeve, the stereo jack has ring, a tip and a sleeve.\n\n•	On the mono jack the tip is the +ve, and the sleeve is the -ve or shield.\n•	On a stereo jack being used for a balanced signal, the tip is the +ve, the ring is the -ve, and the sleeve is the shield.\n•	On a stereo jack being used for a stereo signal (left and right), the tip is the left, the ring is the right, and the sleeve is the shield.\n\nJacks also come in various sizes - 6.5mm (¼\"), 3.5mm, 2.5mm. The wiring for all of them is the same.";
    
    img1 = [UIImage imageNamed:@"jack.jpg"];
    jack.textArray = @[text1];
    jack.imageArray = @[img1];
    
    AudioModel *miniJack = [[AudioModel alloc] init];
    miniJack.name = @"Mini Jack (3.5mm Jack)";
    miniJack.title = @"Mini Jack (3.5mm)";
    text1 = @"There are two types of 6.5mm Jacks: Mono and stereo. The mono jack has a tip and a sleeve, the stereo jack has ring, a tip and a sleeve.\n\n•	On the mono jack the tip is the +ve, and the sleeve is the -ve or shield.\n•	On a stereo jack being used for a balanced signal, the tip is the +ve, the ring is the -ve, and the sleeve is the shield.\n•	On a stereo jack being used for a stereo signal (left and right), the tip is the left, the ring is the right, and the sleeve is the shield.\n\nJacks also come in various sizes - 6.5mm (¼\"), 3.5mm, 2.5mm. The wiring for all of them is the same.";
    
    img1 = [UIImage imageNamed:@"miniJack.jpg"];
    miniJack.textArray = @[text1];
    miniJack.imageArray = @[img1];
    
    AudioModel *rca = [[AudioModel alloc] init];
    rca.name = @"RCA";
    rca.title = @"RCA";
    text1 = @"RCA's are used a lot for home stereos, videos, DVDs etc.\nThe RCA can carry either audio or video. It is wired the same way as a mono jack: The center pin is the +ve, and the outer ring is the -ve or shield.";
    img1 = [UIImage imageNamed:@"rca.jpg"];
    
    rca.textArray = @[text1];
    rca.imageArray = @[img1];
    
    self.audioModel = @[introduction, microphones, audioConnectors, xlrs, jack, miniJack, rca];
}

- (void)makeVideoModel
{
    NSString *text1;
    NSString *text2;
    NSString *text3;
    NSString *text4;
    
    UIImage *img1;
    UIImage *img2;
    UIImage *img3;
    UIImage *img4;
    
    VideoModel *introduction = [[VideoModel alloc] init];
    introduction.name = @"Introduction";
    introduction.title = @"Camera";
    text1 = @"In this section you will learn how to use the camera. How to frame your shots professionally, how to move the camera right way to get the desired effect, see different techniques and effects on the camera. Also learn professional terminology that is used in professional environment.";
    
    introduction.textArray = @[text1];
    
    VideoModel *framingRules = [[VideoModel alloc] init];
    framingRules.name = @"Framing Rules";
    framingRules.title = @"The Rule of Thirds";
    text1 = @"The rule of thirds is a concept in video and film production in which the frame is divided into nine imaginary sections, as illustrated on the right. This creates reference points which act as guides for framing the image.\nPoints (or lines) of interest should occur at 1/3 or 2/3 of the way up (or across) the frame, rather than in the centre. Like many rules of framing, this is not always necessary (or desirable) but it is one of those rules you should understand well before you break it.\nDepending on the type of shot, it's not always possible to place the eyes like this.\nIn this shot, the building takes up approximately 1/3 of the frame and the sky takes up the rest. This could be a \"weather shot\", in which the subject is actually the sky.";
    framingRules.textArray = @[text1];
    
    VideoModel *cameraAngels = [[VideoModel alloc] init];
    cameraAngels.name = @"Camera Angles";
    cameraAngels.title = @"Camera Angels";
    text1 = @"The term camera angle means slightly different things to different people but it always refers to the way a shot is composed. Some people use it to include all camera shot types, others use it to specifically mean the angle between the camera and the subject. We will concentrate on the literal interpretation of camera angles, that is, the angle of the camera relative to the subject.\n\nEye-Level - This is the most common view, being the real-world angle that we are all used to. It shows subjects as we would expect to see them in real life. It is a fairly neutral shot.";
    text2 = @"High Angle - A high angle shows the subject from above, i.e. the camera is angled down towards the subject. This has the effect of diminishing the subject, making them appear less powerful, less significant or even submissive.";
    text3 = @"Low Angle - This shows the subject from below, giving them the impression of being more powerful or dominant.";
    text4 = @"Bird's Eye - The scene is shown from directly above. This is a completely different and somewhat unnatural point of view which can be used for dramatic effect or for showing a different spatial perspective.In drama it can be used to show the positions and motions of different characters and objects, enabling the viewer to see things the characters can't.\nThe bird's-eye view is also very useful in sports, documentaries, etc.";
    
    cameraAngels.textArray = @[text1, text2, text3, text4];
    
    VideoModel *framing = [[VideoModel alloc] init];
    framing.name = @"Framing";
    
    VideoModel *movement = [[VideoModel alloc] init];
    movement.name = @"Camera movements";
    
    self.videoModel = @[introduction, framingRules, cameraAngels, framing, movement];
}

- (void)makeSubVideoModel
{
    NSString *text1;
    NSString *text2;
    NSString *text3;
    
    UIImage *img1;
    UIImage *img2;
    UIImage *img3;
    
    VideoModel *subVideoFramingWideShot = [[VideoModel alloc] init];
    subVideoFramingWideShot.name = @"Wide shots";
    text1 = @"EWS (Extreme Wide Shot)\nIn the EWS, the view is so far from the subject that he isn't even visible. The point of this shot is to show the subject's surroundings. The EWS is often used as an establishing shot — the first shot of a new scene, designed to show the audience where the action is taking place.";
    
    text2 = @"VWS (Very Wide Shot)\nThe VWS is much closer to the subject. He is (just) visible here, but the emphasis is still on placing him in his environment. This also works as an establishing shot.";
    
    text3 = @"WS (Wide Shot)\nIn the WS, the subject takes up the full frame. In this case, the boy's feet are almost at the bottom of frame, and his head is almost at the top. Obviously the subject doesn't take up the whole width of the frame, since this is as close as we can get without losing any part of him. The small amount of room above and below the ";
    
    subVideoFramingWideShot.textArray = @[text1, text2, text3];
    
    VideoModel *subVideoFramingMediumShot = [[VideoModel alloc] init];
    subVideoFramingMediumShot.name = @"Medium Shots";
    
    text1 = @"MS (Mid Shot)\nThe MS shows some part of the subject in more detail, whilst still showing enough for the audience to feel as if they were looking at the whole subject. In fact, this is an approximation of how you would see a person \"in the flesh\" if you were having a casual conversation. You wouldn't be paying any attention to their lower body, so that part of the picture is unnecessary.";
        
        text2 = @"MCU (Medium Close Up)\nHalf way between a MS and a CU. This shot shows the face more clearly, without getting uncomfortably close.";
    
    subVideoFramingMediumShot.textArray = @[text1, text2];

    VideoModel *subVideoFramingCloseupShot = [[VideoModel alloc] init];
    subVideoFramingCloseupShot.name = @"Close Up Shots";
    text1 = @"CU (Close Up)\nIn the CU, a certain feature or part of the subject takes up the whole frame. A close up of a person usually means a close up of their face.";
    
    text2 = @"ECU (Extreme Close Up)\nThe ECU gets right in and shows extreme detail. For people, the ECU is used to convey emotion.";
    
    subVideoFramingCloseupShot.textArray = @[text1, text2];
    
    VideoModel *subVideoFramingExpressionShot = [[VideoModel alloc] init];
    subVideoFramingExpressionShot.name = @"Expressions";
    text1 = @"Noddy Shot\nCommon in interviews, this is a shot of the person listening and reacting to the subject. In fact, when shooting interviews with one camera, the usual routine is to shoot the subject (using OSS and one-shots) for the entire interview, then shoot some noddies of the interviewer once the interview is finished. The noddies are edited into the interview later.";
    
        text2 = @"Over the Shoulder Shot (OSS)\nThis shot is framed from behind a person who is looking at the subject. The person facing the subject should usually occupy about 1/3 of the frame.\nThis shot helps to establish the position of each person, and get the feel of looking at one person from the other's point of view.\nIt's common to cut between these shots during a conversation, alternating the view between the different speakers.";
    
    subVideoFramingExpressionShot.textArray = @[text1, text2];

    VideoModel *subVideoFramingCutawayShot = [[VideoModel alloc] init];
    subVideoFramingCutawayShot.name = @"Cutaways";
    text1 = @"CA (Cutaway)\nA cutaway is a shot that's usually of something other than the current action. It could be a different subject (e.g. cat on the scene, kids playing on the side), a CU of a different part of the subject (e.g. a CU of the subject's hands), or just about anything else. The CA is used as a \"buffer\" between shots (to help the editing process), or to add interest/information.";
    
    subVideoFramingCutawayShot.textArray = @[text1];
    
    //camera movements
    
    VideoModel *dolly = [[VideoModel alloc] init];
    dolly.name = @"Dolly shot";

    text1 = @"Dolly shot\n\nA dolly is a cart which travels along tracks. The camera is mounted on the dolly and records the shot as it moves. Dolly shots have a number of applications and can provide very dramatic footage.\nIn many circles a dolly shot is also known as a tracking shot or trucking shot. However some professionals prefer the more rigid terminology which defines dolly as in-and-out movement (i.e. closer/further away from the subject), while tracking means side-to-side movement.";
    dolly.textArray = @[text1];
    
    VideoModel *cameraPan = [[VideoModel alloc] init];
    cameraPan.name = @"Camera pan";
    text1 = @"Camera Pan\n\nA pan is a horizontal camera movement in which the camera moves left and right about a central axis. This is a swiveling movement, i.e. mounted in a fixed location on a tripod or shoulder, rather than a dolly-like movement in which the entire mounting system moves. To create a smooth pan it's a good idea to practice the movement first. If you need to move or stretch your body during the move, it helps to position yourself so you end up in the more comfortable position.";
    cameraPan.textArray = @[text1];
    
    VideoModel *cameraTilt = [[VideoModel alloc] init];
    cameraTilt.name = @"Camera tilt";
    text1 = @"Camera Tilt\n\nA tilt is a vertical camera movement in which the camera points up or down from a stationary location. For example, if you mount a camera on your shoulder and nod it up and down, you are tilting the camera.\nTilting is less common than panning because that's the way humans work — we look left and right more often than we look up and down.";
    cameraTilt.textArray = @[text1];
    
    VideoModel *duchTilt = [[VideoModel alloc] init];
    duchTilt.name = @"Duch tilt";
    text1 = @"Dutch Tilt\n\nA Dutch tilt is a camera shot in which the camera angle is deliberately slanted to one side. This can be used for dramatic effect and helps portray unease, disorientation, frantic or desperate action, intoxication, madness, etc.";
    duchTilt.textArray = @[text1];
    
    VideoModel *pedestal = [[VideoModel alloc] init];
    pedestal.name = @"Pedestal shot";
    text1 = @"Pedestal Shot\n\nA pedestal shot means moving the camera vertically with respect to the subject. This is often referred to as \"pedding\" the camera up or down.\nThe term comes from the type of camera support known as a pedestal (pictured right). Pedestals are used in studio settings and provide a great deal of flexibility as well as very smooth movement. Unlike standard tripods, pedestals have the ability to move the camera in any direction (left, right, up, down).";
    pedestal.textArray = @[text1];
    
    VideoModel *trackingShot = [[VideoModel alloc] init];
    trackingShot.name = @"Tracking shot";
    text1 = @"Tracking Shot\n\nThe Follow shot is fairly self-explanatory. It simply means that the camera follows the subject at action. The following distance is usually kept more or less constant.\nThe movement can be achieved by dollying or tracking, although in many cases a Steadicam is the most practical option. Hand-held follow-shots are quite achievable in many situations but are not generally suited to feature film cinematography.";
    trackingShot.textArray = @[text1];
    
    VideoModel *zoomShot = [[VideoModel alloc] init];
    zoomShot.name = @"Zoom shot";
    text1 = @"Zoom Shot\n\nA zoom is technically not a camera move as it does not require the camera itself to move at all. Zooming means altering the focal length of the lens to give the illusion of moving closer to or further away from the action.\nThe effect is not quite the same though. Zooming is effectively magnifying a part of the image, while moving the camera creates a difference in perspective — background objects appear to change in relation to foreground objects. This is sometimes used for creative effect in the dolly zoom.";
    zoomShot.textArray = @[text1];
    
    NSArray *movements = @[dolly, cameraPan, cameraTilt, duchTilt, pedestal, trackingShot, zoomShot];
    
    NSArray *framing = @[subVideoFramingWideShot, subVideoFramingMediumShot, subVideoFramingCloseupShot, subVideoFramingExpressionShot];

    self.subVideoModel = @[framing, movements];
    
}

@end
