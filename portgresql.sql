CREATE TABLE person(
    person_no character varying(10),
    name character varying(100),
    age integer,
    gender character varying(10),
    height integer,
    weight integer,
    PRIMARY KEY(person_no)

);

CREATE TABLE sport (
    code character varying(10),
    name character varying(100),
    description text,
    group0 boolean,
    group1 boolean,
    group2 boolean,
    group3 boolean,
    group4 boolean,
    group5 boolean,
    guide integer,
    PRIMARY KEY(code)

);

CREATE TABLE health (
    person_no character varying(10),
    Hypokinesia integer,
    Obesity integer,
    Active_Exercise integer,
    Go_Up_Stair integer,
    Up_Chair integer,
    Walk_15 integer,
    With_Out_Cane integer,
    Going_Out integer,
    High_blood_pressure integer,
    Osteoporosis integer,
    Fall integer,
    Ex_gui integer
);

INSERT INTO person (person_no, name, age, gender, height, weight)
values  ('p001','cefoxSR1707004101',74,'Female',145,39),
        ('p002','cefoxSR1707003701',73,'Female',155,50),
        ('p003','cefoxSR1707005101',76,'Female',154,56.5),
        ('p004','cefoxSR1707003501',81,'Man',158,65),
        ('p005','cefoxSR1601000701',77,'Female',156,60),
        ('p006','cefoxSR1601005001',85,'Female',158,59.5),
        ('p007','cefoxSR1601005301',71,'Female',148,52),
        ('p008','cefoxSR1601005701',92,'Female',157,60),
        ('p009','cefoxSR1707004301',78,'Man',169.5,66),
        ('p010','cefoxSR1707004501',79,'Man',165,58),
        ('p011','cefoxSR1707004401',51,'Female',150,45),
        ('p012','cefoxSR1707004801',71,'Man',156,58),
        ('p013','cefoxSR1707004701',74,'Man',166,68),
        ('p014','cefoxSR1707004201',71,'Man',168,60),
        ('p015','cefoxSR1707005601',71,'Female',161,64),
        ('p016','cefoxSR1707004901',86,'Female',151,68),
        ('p017','cefoxSR1707004601',71,'Man',160,47),
        ('p018','cefoxSR1601000702',82,'Man',165,60),
        ('p019','cefoxSR1707005602',76,'Female',154,56.5),
        ('p020','cefoxSR1707005102',81,'Female',144,49),
        ('p021','cefoxSR1707003502',76,'Female',161,56),
        ('p022','cefoxSR1707005502',69,'Man',168,78),
        ('p023','cefoxSR1707004902',69,'Female',158,70),
        ('p024','cefoxSR1707004502',81,'Female',150,55),
        ('p025','cefoxSR1707004302',78,'Man',169.5,66),
        ('p026','cefoxSR1707005302',80,'Female',146,65),
        ('p027','cefoxSR1707005802',70,'Female',159,60),
        ('p028','cefoxSR1707004802',71,'Man',160,47),
        ('p029','cefoxSR1707006002',80,'Female',156,60);

INSERT INTO health (person_no,hypokinesia,obesity,active_exercise,go_up_stair,up_chair,walk_15,with_out_cane,going_out,high_blood_pressure,osteoporosis,fall,ex_gui)
values  ('p001',1,0,1,1,1,1,1,1,1,0,1,2),
        ('p002',1,1,0,1,1,1,1,1,0,1,1,1),
        ('p003',1,1,0,1,1,1,1,1,1,0,1,1),
        ('p004',1,0,0,1,1,1,1,1,1,0,1,1),
        ('p005',0,1,0,1,1,1,1,1,0,0,0,2),
        ('p006',1,0,0,0,1,0,0,0,1,0,1,1),
        ('p007',1,0,0,1,1,0,0,0,0,1,1,1),
        ('p008',1,0,0,0,1,0,0,1,1,0,1,1),
        ('p009',0,0,0,1,1,1,1,1,1,0,0,0),
        ('p010',0,0,0,1,1,1,1,1,1,0,0,0),
        ('p011',0,0,0,1,1,1,1,1,0,0,0,0),
        ('p012',0,1,0,1,1,1,1,1,1,0,0,2),
        ('p013',0,0,0,1,1,1,1,1,1,0,0,0),
        ('p014',0,0,0,1,1,1,1,1,1,0,0,0),
        ('p015',1,1,0,1,1,0,0,0,0,0,0,1),
        ('p016',1,1,0,1,1,1,1,1,1,0,1,1),
        ('p017',0,0,0,1,1,1,1,1,0,0,0,0),
        ('p018',0,0,0,1,1,1,1,1,1,0,0,1),
        ('p019',1,0,1,1,1,1,1,1,1,0,0,1),
        ('p020',0,0,1,1,1,0,1,1,1,0,0,2),
        ('p021',1,0,1,1,1,1,1,1,1,0,0,1),
        ('p022',0,1,1,1,1,1,1,1,1,0,1,2),
        ('p023',0,1,1,1,1,1,1,1,1,0,0,2),
        ('p024',1,0,1,1,1,1,1,1,1,0,1,2),
        ('p025',0,1,1,1,1,1,1,1,1,0,1,2),
        ('p026',1,1,1,1,1,1,1,1,1,0,0,0),
        ('p027',0,0,0,1,1,1,1,1,0,0,0,0),
        ('p028',0,0,0,1,1,1,1,1,0,0,0,0),
        ('p029',1,0,1,1,1,1,1,1,1,0,0,2);

INSERT INTO sport(code, name, description, group0,group1,group2,group3,group4,group5,guide)
values  ('S001','jogging or running','Benefits: Running is one of the most effective forms of aerobic exercise. It can improve heart health, burn fat and calories, and lift your mood, just to name a few.
Safety concerns: Choose well-lit, populated running routes. Let someone know where you’ll be.
Duration and frequency: 20 to 30 minutes, 2 to 3 times per week
If you’re a beginner, run for 20 to 30 minutes twice a week. Your pace should be conversational during the run. You can alternate between 5 minutes of running and 1 minute of walking to start. To stay injury-free, always stretch after your run.','F','T','T','F','F','F',2),
        ('S002','aerobics','Benefits: This exercise increases heart and cardiovascular health, builds up strength, and tones major muscle groups.
Safety: Focus on proper form with each exercise to avoid injury. Keep your heart rate at a moderate level throughout. You should be able to carry on a brief conversation during this exercise.
Duration and frequency: 15 to 25 minutes, 3 to 5 times per week
This aerobic circuit is designed to get your heart rate up. Perform the following strength exercises for 1 minute:
','T','T','T','F','T','T',2),
        ('S003','swimming','Benefits: Swimming is a low-impact exercise, so it’s good for people prone to or recovering from an injury or living with limited mobility. It can help you tone your muscles and build strength and endurance.
Safety: Avoid swimming alone and, if possible, choose a pool with a lifeguard on duty. If you’re new to swimming, begin by enrolling in swim lessons.
Duration and frequency: 10 to 30 minutes, 2 to 5 times a week. Add 5 minutes to your swim time each week to increase your duration.
If your gym has a pool, try swimming as aerobic exercise. It’s a nonimpact workout, so it’s a good choice if you’re prone to injury. You’re also increasing your heart rate, toning your muscles, and building strength and endurance — all without adding additional strain to your body.
You can start by swimming laps using one stroke, such as freestyle. As you swim more, add additional strokes. For example, you could do 1 to 4 laps of freestyle followed by 1 to 4 laps of breaststroke or backstroke.
If you get tired, rest on the side of the pool between laps. Always follow the safety instructions and guidelines of the pool where you swim.','T','T','T','F','T','T',2),
        ('S004','riding a bike fast or on hills','','F','T','F','F','F','F',2),
        ('S005','singles tennis','Benefits: Tennis can be a great workout and lots of fun. Playing tennis has many health benefits including:
- Increasing aerobic capacities
- Lowering resting heart rate and blood pressure
- Improving metabolic function
- Increasing bone density
- Lowering body fat
- Improving muscle tone, strength and flexibility
- Increasing reaction times. 

Safety:
- Have a first-aid kit available at all practices and games.
- Use sunscreen with an SPF of 30 or greater and wear a hat if you play outside.
- Drink plenty of water during and after play.
- Give yourself time off to rest between matches and training sessions to avoid overuse injuries.


Duration and frequency: 15 to 25 minutes, 1 time per week','T','T','T','F','T','F',2),
        ('S006','football','','F','T','F','F','F','F',2),
        ('S007','hiking uphill','','F','T','F','F','F','F',2),
        ('S008','energetic dancing','','F','T','F','F','F','F',2),
        ('S009','martial arts','Benefits: Martial arts such as Karate, Muay Thai,Tai Chi is a complete workout. You build stamina, strength, and flexibility. You also develop coordination and balance. You feel better physically as your body becomes stronger and more capable.

Safety:
- Equipment. Safety gear should fit properly and be well maintained.
- Headgear. When the rules allow, protective headgear should be worn for sparring or for activities with risk of falling, such as high jumps or flying kicks.
- Body pads can help protect against scrapes and bruises and limit the pain from kicks and punches. Arm pads, shin pads, and chest protection for sparring.
- Mouth guards.
- Environment. Mats and floors should be safe to play on. Gaps between mats can cause sprained ankles. Wet or worn floors can cause slips and falls.


Duration and frequency: 15 to 25 minutes, 1 time per week','F','T','T','F','T','F',2),
        ('S010','table tennis','Benefits: Table tennis is the perfect choice for people who had knee surgery, history of back problems, or simply those who are tired of twisting their ankles while playing some other sports. It improves balance. Staying balanced and being able to quickly change direction is key to being a good table tennis player. The more you play, the more you can improve your sense of balance.

Safety:
Make sure you get a proper warm up before starting play. Warming up involves 5-15 minutes of light physical activity to elevate your heart rate and breathing rate, increase your blood flow and make your muscles warmer.


Duration and frequency: 15 to 25 minutes, 2-3 times per week','T','T','T','F','T','T',2),
        ('S011','brisk walking','','T','T','T','F','T','T',0),
        ('S012','water aerobics','','T','T','T','T','T','T',0),
        ('S013','riding a bike','','T','T','T','F','T','F',0),
        ('S014','dancing','','F','T','T','F','T','T',0),
        ('S015','doubles tennis','','T','T','T','F','T','F',0),
        ('S016','pushing a lawn mower','','T','T','T','F','T','T',0),
        ('S017','hiking','','F','T','F','F','F','F',0),
        ('S018','yoga','','T','T','T','T','T','T',0),
        ('S019','getting up to make a cup of tea','Getting up to make a cup of tea in the morning, be it black or green tea, is a reduced cancer risk. This is again due to the teas’ polyphenol or antioxidant content.

A study of green tea, in particular, found that it may help keep esophageal and lung cancers at bay. Moreover, green tea has shown to have an inhibiting effect on the development of some types of tumors.
','T','T','T','T','T','T',1),
        ('S020','moving around your home','Moving around your home is a easy way to improve or maintain your overall health. Just 30 minutes every day can increase cardiovascular fitness, strengthen bones, reduce excess body fat, and boost muscle power and endurance. It can also reduce your risk of developing conditions such as heart disease, type 2 diabetes, osteoporosis and some cancers. Unlike some other forms of exercise, walking is free and doesn’t require any special equipment or training.
','T','T','T','T','T','T',1),
        ('S021','walking at a slow pace','Walking at a slow pace may offer obese elderly a better bang for their buck when it comes to burning calories and avoiding knee injuries.

People who walk at a slower pace burn more calories than when they walk at their normal pace. In addition, walking at a slower, 2-mile-per-hour pace reduces the stress on their knee joints by up to 25% compared with walking at a brisk 3-mile-per-hour pace.

By walking more slowly, obese individuals can burn more calories per mile and may reduce the risk of arthritis or joint injury.','T','T','T','T','T','T',1),
        ('S022','cleaning and dusting','Visual clutter leads to mental clutter. You might think you’ve learned to live with your various piles, but they’re most likely affecting you more deeply than you realize. A 2010 study in the Personality and Social Psychology Bulletin revealed that women with messier homes have higher levels of cortisol than those with tidy houses. What does that mean? Your stress levels are linked to your space. Tackling those outstanding to-dos and getting your house in order can help you manage stress. And couldn’t we all benefit from meaningful ways to reduce stress in our busy lives?','T','T','T','T','T','T',1),
        ('S023','vacuuming','Vacuuming leaves fewer places for germs and bacteria to hide. Plus, dust and allergens build up in carpeting, bedding and upholstery over time, contributing to worsened allergies and asthma. In short, the health benefits of a clean home are obvious. If you want to keep yourself and your family healthy, cleaning on a regular basis is a must. Don’t just vacuum and dust, either. Think about decluttering your surfaces. The more items you have, the harder it is to dust and sanitize. A streamlined aesthetic makes it easier to keep everything truly clean, helping your health. If you’re ready to get started, here are the nine germiest areas in your home to tackle ASAP.','T','T','T','T','T','T',1),
        ('S024','making the bed','Making the bed every morning improve your sleep quality. A poll conducted by the National Sleep Foundation found that people who make their bed in the morning are 19 percent more likely to have a good night’s sleep, every night and making your bed each morning could make you more productive. If you start your day by making your bed, that means you can go ahead with the rest of your day knowing that you’ve already accomplished something. “It will give you a small sense of pride and it will encourage you to do another task and another and another,” McRaven said in his 2014 commencement address at the University of Texas at Austin. “By the end of the day, that one task completed will have turned into many tasks completed.”','T','T','T','T','T','T',1),
        ('S025','standing up','Also known as height-adjustable desks or sit-stand desks, standing desks do exactly what it sounds like: they allow workers to stand up comfortably while working. Not only does this mitigate — or even fully negate — the harmful effects of prolonged seating, but it also comes with surprising benefits that might not have crossed your mind. Read on to learn the 4 benefits of using a standing desk.
1. Reducing back pain
2. Lowering risk of obesity and weight gain
3. Improving mood and energy levels
4. Boosts productivity','T','T','T','T','T','T',1);


