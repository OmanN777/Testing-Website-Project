# File Script : Average-load.js

PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2> k6 run Average-load.js

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: Average-load.js
        output: -

     scenarios: (100.00%) 1 scenario, 100 max VUs, 5m30s max duration (incl. graceful stop):
              * default: Up to 100 looping VUs for 5m0s over 3 stages (gracefulRampDown: 30s, gracefulStop: 30s)

WARN[0147] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0152] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0154] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0175] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0180] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0183] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0186] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0192] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0193] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"

     data_received..................: 111 MB 371 kB/s
     data_sent......................: 360 kB 1.2 kB/s
     http_req_blocked...............: avg=186.35µs min=0s      med=0s     max=21.67ms  p(90)=0s      p(95)=0s
     http_req_connecting............: avg=185.82µs min=0s      med=0s     max=21.67ms  p(90)=0s      p(95)=0s
     http_req_duration..............: avg=4.73s    min=77.51ms med=3.44s  max=1m0s     p(90)=10.42s  p(95)=11.57s
       { expected_response:true }...: avg=4.61s    min=77.51ms med=3.44s  max=58.7s    p(90)=10.39s  p(95)=11.44s
     http_req_failed................: 0.21%  9 out of 4233
     http_req_receiving.............: avg=11.2ms   min=0s      med=8.19ms max=292.03ms p(90)=19.42ms p(95)=26.33ms
     http_req_sending...............: avg=48ns     min=0s      med=0s     max=142.5µs  p(90)=0s      p(95)=0s
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s     max=0s       p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=4.72s    min=71ms    med=3.43s  max=1m0s     p(90)=10.41s  p(95)=11.56s
     http_reqs......................: 4233   14.100931/s
     iteration_duration.............: avg=5.73s    min=1.07s   med=4.44s  max=1m1s     p(90)=11.42s  p(95)=12.57s
     iterations.....................: 4233   14.100931/s
     vus............................: 2      min=2         max=100
     vus_max........................: 100    min=100       max=100

### 1.	Scenarios (สถานการณ์ทดสอบ):
สถานการณ์:
    - มีสถานการณ์ทดสอบ 1 แบบ
    - ใช้ Virtual Users (VUs) สูงสุด 100 คน
    - ระยะเวลาทดสอบ 5 นาที พร้อม Graceful Ramp Down 30 วินาที   และ Graceful Stop 30 วินาที

### 2. Data Received (ข้อมูลที่รับได้):
    - รวม: 111 MB
    - อัตราเฉลี่ย: 371 kB/s

### 3. Data Sent (ข้อมูลที่ส่งไป):
    - รวม: 360 kB
    - อัตราเฉลี่ย: 1.2 kB/s

### 4. HTTP Request Metrics:
    http_req_blocked:
        เวลาถูกบล็อกโดยเฉลี่ย: 186.35 µs
        สูงสุด: 21.67 ms
    http_req_connecting:
        เวลาเชื่อมต่อโดยเฉลี่ย: 185.82 µs
        สูงสุด: 21.67 ms
    http_req_duration:
        เวลาที่ใช้ในการดำเนินการ request:
            ค่าเฉลี่ย: 4.73 วินาที
            ต่ำสุด: 77.51 ms
            สูงสุด: 1 นาที
            p(90): 10.42 วินาที, p(95): 11.57 วินาที
        สำหรับ request ที่ได้รับ response ตามที่คาด:
            ค่าเฉลี่ย: 4.61 วินาที
            สูงสุด: 58.7 วินาที
    http_req_failed:
        จำนวน request ที่ล้มเหลว: 0.21% (9 จาก 4,233)
    http_req_receiving:
        เวลาเฉลี่ย: 11.2 ms
        สูงสุด: 292.03 ms
    http_req_sending:
        เวลาเฉลี่ย: 48 ns
    http_req_waiting:
        เวลาเฉลี่ยที่รอ response: 4.72 วินาที
        สูงสุด: 1 นาที

### 5. Iteration Metrics (การทำซ้ำ):
    iteration_duration:
        ค่าเฉลี่ย: 5.73 วินาที
        สูงสุด: 1 นาที 1 วินาที
    iterations:
        รวม: 4,233 ครั้ง
        อัตราเฉลี่ย: 14.10 iterations/s

### 6. Virtual Users Metrics (Virtual Users):
    vus (จำนวนผู้ใช้งานจริง):
        ขณะทดสอบ: 2 VUs
    vus_max (จำนวนผู้ใช้งานสูงสุด):
        100 VUs 


### ⚠️ สรุปผลลัพธ์:
การทดสอบ Average-load ใช้ผู้ใช้งานเสมือนสูงสุด 100 คนในระยะเวลา 5 นาที พบว่า HTTP Requests สำเร็จ 99.79% (ล้มเหลว 0.21% จากข้อผิดพลาด Timeout) โดยมีระยะเวลาการร้องขอเฉลี่ย 4.73 วินาที และ 95% ของคำร้องใช้เวลาต่ำกว่า 11.57 วินาที แสดงให้เห็นว่าระบบสามารถรองรับโหลดได้ดีในระดับนี้

    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------


# File Script : Soak-testing.js

  PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2> k6 run Soak-testing.js 

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: Soak-testing.js
        output: -

     scenarios: (100.00%) 1 scenario, 100 max VUs, 14m30s max duration (incl. graceful stop):
              * default: Up to 100 looping VUs for 14m0s over 3 stages (gracefulRampDown: 30s, gracefulStop: 30s)


     data_received..................: 392 MB 467 kB/s
     data_sent......................: 1.3 MB 1.5 kB/s
     http_req_blocked...............: avg=108.98µs min=0s      med=0s     max=76.88ms  p(90)=0s      p(95)=0s
     http_req_connecting............: avg=108.82µs min=0s      med=0s     max=76.88ms  p(90)=0s      p(95)=0s
     http_req_duration..............: avg=3.88s    min=76.5ms  med=3.51s  max=38.09s   p(90)=5.29s   p(95)=7.49s
       { expected_response:true }...: avg=3.88s    min=76.5ms  med=3.51s  max=38.09s   p(90)=5.29s   p(95)=7.49s
     http_req_failed................: 0.00%  0 out of 14804
     http_req_receiving.............: avg=10.29ms  min=2.51ms  med=8.01ms max=317.67ms p(90)=17.56ms p(95)=24.18ms
     http_req_sending...............: avg=473ns    min=0s      med=0s     max=1ms      p(90)=0s      p(95)=0s
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s     max=0s       p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=3.87s    min=70.51ms med=3.5s   max=38.05s   p(90)=5.28s   p(95)=7.48s
     http_reqs......................: 14804  17.619214/s
     iteration_duration.............: avg=4.88s    min=1.07s   med=4.51s  max=39.09s   p(90)=6.29s   p(95)=8.49s
     iterations.....................: 14804  17.619214/s
     vus............................: 1      min=1          max=100
     vus_max........................: 100    min=100        max=100


running (14m00.2s), 000/100 VUs, 14804 complete and 0 interrupted iterations
default ✓ [======================================] 000/100 VUs  14m0s
PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2>

### 1. Scenarios (สถานการณ์ทดสอบ):
    สถานการณ์:
        - 1 สถานการณ์ทดสอบ
        - Virtual Users (VUs) สูงสุด: 100 คน
        - ระยะเวลาทดสอบ: 14 นาที พร้อม Graceful Ramp Down 30 วินาที

### 2. Data Received (ข้อมูลที่รับได้):
    รวม: 392 MB
    อัตราเฉลี่ย: 467 kB/s

### 3. Data Sent (ข้อมูลที่ส่งไป):
    รวม: 1.3 MB
    อัตราเฉลี่ย: 1.5 kB/s

### 4. HTTP Request Metrics:
    http_req_blocked:
        เวลาเฉลี่ย: 108.98 µs
        สูงสุด: 76.88 ms
    http_req_connecting:
        เวลาเฉลี่ย: 108.82 µs
        สูงสุด: 76.88 ms
    http_req_duration:
        เวลาที่ใช้ในการดำเนินการ request:
            ค่าเฉลี่ย: 3.88 วินาที
            ต่ำสุด: 76.5 ms
            สูงสุด: 38.09 วินาที
            p(90): 5.29 วินาที, p(95): 7.49 วินาที
        สำหรับ request ที่ได้รับ response ตามที่คาด:
        ค่าเฉลี่ย: 3.88 วินาที
        สูงสุด: 38.09 วินาที
    http_req_failed:
        จำนวน request ที่ล้มเหลว: 0% (0 จาก 14804)
    http_req_receiving:
        เวลาเฉลี่ย: 10.29 ms
        สูงสุด: 317.67 ms
    http_req_waiting:
        เวลาเฉลี่ยที่รอ response: 3.87 วินาที
        สูงสุด: 38.05 วินาที

### 5. Iteration Metrics (การทำซ้ำ):
    iteration_duration:
        ค่าเฉลี่ย: 4.88 วินาที
        ต่ำสุด: 1.07 วินาที
        สูงสุด: 39.09 วินาที

    iterations:
        รวม: 14804 ครั้ง
        อัตราเฉลี่ย: 17.62 iterations/s
            

### 6. Virtual Users Metrics (Virtual Users):
    vus (จำนวนผู้ใช้งานจริง):
        ขณะทดสอบ: 1 VU
    vus_max (จำนวนผู้ใช้งานสูงสุด):
        100 VUs

### ⚠️ สรุปผลลัพธ์:
การทดสอบ Soak-testing ใช้ผู้ใช้งานเสมือนสูงสุด 100 คนในระยะเวลา 14 นาที พบว่า HTTP Requests สำเร็จ 100% (ไม่มีข้อผิดพลาด) โดยมีเวลาการร้องขอเฉลี่ย 3.88 วินาที และ 95% ของคำร้องใช้เวลาต่ำกว่า 7.49 วินาที แสดงให้เห็นว่าระบบสามารถรองรับโหลดต่อเนื่องในระยะเวลานานได้ดีโดยไม่เกิดปัญหาประสิทธิภาพลดลง
    

----------------------------------------------------------------------------------------------------------------------------------------------------------------------


# File Script : Spike-testing.js

      PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2> K6 run Spike-testing.js

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: Spike-testing.js
        output: -

     scenarios: (100.00%) 1 scenario, 2000 max VUs, 3m20s max duration (incl. graceful stop):
              * default: Up to 2000 looping VUs for 2m50s over 4 stages (gracefulRampDown: 30s, gracefulStop: 30s)

WARN[0106] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59423->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0107] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59495->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0107] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59778->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0107] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60087->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0107] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60333->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0107] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60367->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0109] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61725->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0111] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63801->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0113] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0113] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50243->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0113] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61847->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0113] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50107->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0114] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:51462->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0114] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:51887->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0116] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0118] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61963->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0119] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0120] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62012->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0120] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62015->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0120] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62079->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0120] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:58183->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0120] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:58225->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0121] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62553->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0121] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59073->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0121] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59112->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0121] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62941->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0121] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63009->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0123] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0123] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63669->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0124] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0124] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64623->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64634->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64698->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64715->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59633->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0125] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:65147->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:65497->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:49185->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60414->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60475->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0126] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59558->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59553->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60497->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50024->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60513->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60519->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60533->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60820->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60571->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0127] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50839->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60157->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61123->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61144->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:51513->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60387->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0128] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0129] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0129] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60477->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0129] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:52403->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0130] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60537->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0130] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0130] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60564->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0131] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0132] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0132] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"                                                                                                                          
WARN[0132] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61557->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0132] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0133] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:55406->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0133] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0133] Request Failed                                error="Get \"http://45.136.236.146:8081\": dial tcp 45.136.236.146:8081: connectex: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."
WARN[0133] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:56024->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0133] Request Failed                                error="Get \"http://45.136.236.146:8081\": EOF"
WARN[0135] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:60535->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0135] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0135] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0137] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:59385->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0137] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63668->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0137] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63709->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0137] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63781->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0137] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63783->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0138] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63833->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0138] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64204->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0139] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:61997->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0139] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:62003->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0140] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63441->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0140] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63461->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0140] Request Failed                                error="read tcp 192.168.110.109:60923->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host."                                     
WARN[0140] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63471->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0140] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63475->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0140] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:63484->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64195->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50029->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50051->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50133->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"                                                                                                              
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"                                                                                                              
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64461->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0141] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:64611->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0142] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:65263->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0142] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:50883->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0142] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0142] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0143] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0143] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0143] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"                                                                                                              
WARN[0145] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0146] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0147] Request Failed                                error="Get \"http://45.136.236.146:8081\": read tcp 192.168.110.109:54939->45.136.236.146:8081: wsarecv: An existing connection was forcibly closed by the remote host." 
WARN[0148] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0149] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0149] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0150] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0152] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0153] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0154] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0154] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"                                                                                                              
WARN[0154] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0155] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0155] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0156] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0166] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0167] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0167] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0179] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[0185] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"

     data_received..................: 113 MB 571 kB/s
     data_sent......................: 6.7 MB 34 kB/s
     http_req_blocked...............: avg=66.42ms min=0s      med=0s      max=15.86s p(90)=71.72ms  p(95)=260.73ms
     http_req_connecting............: avg=28.96ms min=0s      med=0s      max=15.86s p(90)=27.98ms  p(95)=67.74ms
     http_req_duration..............: avg=1.29s   min=0s      med=25.15ms max=1m0s   p(90)=617.29ms p(95)=3.96s
       { expected_response:true }...: avg=22.94s  min=77.72ms med=26.9s   max=59.94s p(90)=34.6s    p(95)=36.27s
     http_req_failed................: 95.34% 70408 out of 73844
     http_req_receiving.............: avg=1.1ms   min=0s      med=0s      max=30.02s p(90)=552.46µs p(95)=1.14ms
     http_req_sending...............: avg=81.48ms min=0s      med=0s      max=45.57s p(90)=71.4µs   p(95)=202.28ms
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s     p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=1.21s   min=0s      med=24.69ms max=1m0s   p(90)=335.36ms p(95)=2.15s
     http_reqs......................: 73844  374.156753/s
     iteration_duration.............: avg=2.32s   min=1s      med=1.03s   max=1m1s   p(90)=1.74s    p(95)=5.33s
     iterations.....................: 73843  374.151686/s
     vus............................: 1      min=1              max=1998
     vus_max........................: 2000   min=2000           max=2000

                                                                                                                                                                                                                                  
running (3m17.4s), 0000/2000 VUs, 73843 complete and 19 interrupted iterations                                                                                                                                                    
default ✓ [======================================] 0000/2000 VUs  2m50s   


### 1. Scenarios (สถานการณ์ทดสอบ):
    สถานการณ์:
        - Virtual Users (VUs) สูงสุด: 200 คน
        - ระยะเวลาทดสอบ: 30 นาที พร้อม Graceful Ramp Down 30 วินาที
### 2. ผลลัพธ์การรับ-ส่งข้อมูล:
    Data Received (ข้อมูลที่ได้รับ):
        - รวม: 607 MB
        - อัตราเฉลี่ย: 337 kB/s
    Data Sent (ข้อมูลที่ส่ง):
        - รวม: 2.8 MB
        - อัตราเฉลี่ย: 1.5 kB/s
### 3. HTTP Request Metrics (สถิติเกี่ยวกับคำขอ HTTP):
    http_req_blocked:
        เวลาเฉลี่ย: 136.28 µs
        สูงสุด: 1.01 วินาที
    http_req_connecting:
        เวลาเฉลี่ย: 135.31 µs
        สูงสุด: 1.01 วินาที
    http_req_duration:
        เวลาที่ใช้ในการดำเนินการคำขอ:
            ค่าเฉลี่ย: 7.37 วินาที
            ต่ำสุด: 3.72 ms
            สูงสุด: 1 นาที
            p(90): 18.77 วินาที
            p(95): 25.06 วินาที
        สำหรับ request ที่ได้รับ response ตามที่คาด:
            ค่าเฉลี่ย: 10.33 วินาที
            สูงสุด: 59.7 วินาที
    http_req_failed:
        29.28% ของคำขอทั้งหมดล้มเหลว (9480 จาก 32367)
    http_req_receiving:
        เวลาเฉลี่ย: 7.68 ms
        สูงสุด: 918.94 ms
    http_req_waiting:
        เวลาเฉลี่ยที่รอ response: 7.37 วินาที
        สูงสุด: 1 นาที
### 5. Iteration Metrics (การทำซ้ำ):
    iteration_duration:
        ค่าเฉลี่ย: 4.88 วินาที
        ต่ำสุด: 1.07 วินาที
        สูงสุด: 39.09 วินาที
    iterations:
        รวม: 14804 ครั้ง
        อัตราเฉลี่ย: 17.62 iterations/s
### 6. Virtual Users Metrics (Virtual Users):
    vus (จำนวนผู้ใช้งานจริง): ขณะทดสอบ: 1 VU
    vus_max (จำนวนผู้ใช้งานสูงสุด): 100 VUs

### ⚠️ สรุปผลลัพธ์:
การทดสอบ Spike-testing ใช้ผู้ใช้งานเสมือนสูงสุด 2000 คนในระยะเวลา 3 นาที 17 วินาที พบว่าอัตราความล้มเหลวของคำขอ HTTP อยู่ที่ 95.34% โดยมีเวลาเฉลี่ยในการดำเนินการคำขอ 1.29 วินาที และข้อมูลที่ได้รับทั้งหมด 113 MB ขณะที่ระบบมีปัญหาในการรับมือกับการเพิ่มจำนวนผู้ใช้งานอย่างรวดเร็ว


    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------


# File Script : Stress-testing.js

      PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2> K6 run Stress-testing.js

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: Stress-testing.js
        output: -

     scenarios: (100.00%) 1 scenario, 200 max VUs, 30m30s max duration (incl. graceful stop):
              * default: Up to 200 looping VUs for 30m0s over 3 stages (gracefulRampDown: 30s, gracefulStop: 30s)

WARN[0998] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1001] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1012] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1016] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1019] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1027] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1027] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1037] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1038] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1043] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1050] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1054] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1055] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1065] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1071] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1072] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1072] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1075] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1077] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1094] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1109] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1111] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1119] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1119] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1143] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1145] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1155] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1157] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1159] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1181] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1182] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1217] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1225] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1240] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1241] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1246] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"
WARN[1254] Request Failed                                error="Get \"http://45.136.236.146:8081\": request timeout"

     data_received..................: 607 MB 337 kB/s
     data_sent......................: 2.8 MB 1.5 kB/s
     http_req_blocked...............: avg=136.28µs min=0s      med=0s     max=1.01s    p(90)=0s      p(95)=0s
     http_req_connecting............: avg=135.31µs min=0s      med=0s     max=1.01s    p(90)=0s      p(95)=0s
     http_req_duration..............: avg=7.37s    min=3.72ms  med=4.72s  max=1m0s     p(90)=18.77s  p(95)=25.06s
       { expected_response:true }...: avg=10.33s   min=76.34ms med=9.05s  max=59.7s    p(90)=20.5s   p(95)=28.65s
     http_req_failed................: 29.28% 9480 out of 32367
     http_req_receiving.............: avg=7.68ms   min=0s      med=6.99ms max=918.94ms p(90)=14.48ms p(95)=20.2ms
     http_req_sending...............: avg=2.33µs   min=0s      med=0s     max=2.04ms   p(90)=0s      p(95)=0s
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s     max=0s       p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=7.37s    min=3.72ms  med=4.71s  max=1m0s     p(90)=18.76s  p(95)=25.04s
     http_reqs......................: 32367  17.973058/s
     iteration_duration.............: avg=8.38s    min=1s      med=5.72s  max=1m1s     p(90)=19.77s  p(95)=26.06s
     iterations.....................: 32367  17.973058/s
     vus............................: 1      min=1             max=200
     vus_max........................: 200    min=200           max=200


running (30m00.9s), 000/200 VUs, 32367 complete and 7 interrupted iterations
default ✓ [======================================] 000/200 VUs  30m0s
PS C:\Users\aritu.ARITUCH\2024-ITCS362-5-master\project2>    

### 1. Scenarios (สถานการณ์ทดสอบ):
    สถานการณ์ทดสอบ:
        - Virtual Users (VUs) สูงสุด: 100 คน
        - ระยะเวลาทดสอบ: 14 นาที พร้อม Graceful Ramp Down 30 วินาที
### 2. Data Received (ข้อมูลที่รับได้):
    รวม: 392 MB
    อัตราเฉลี่ย: 467 kB/s
### 3. Data Sent (ข้อมูลที่ส่งไป):
    รวม: 1.3 MB
    อัตราเฉลี่ย: 1.5 kB/s
### 4. HTTP Request Metrics:
    http_req_blocked:
        เวลาเฉลี่ย: 108.98 µs
        สูงสุด: 76.88 ms
    http_req_connecting:
        เวลาเฉลี่ย: 108.82 µs
        สูงสุด: 76.88 ms
    http_req_duration (เวลาที่ใช้ในการดำเนินการ request):
        ค่าเฉลี่ย: 3.88 วินาที
        ต่ำสุด: 76.5 ms
        สูงสุด: 38.09 วินาที
        p(90): 5.29 วินาที, p(95): 7.49 วินาที
        - สำหรับ request ที่ได้รับ response ตามที่คาด:
            ค่าเฉลี่ย: 3.88 วินาที
            สูงสุด: 38.09 วินาที
    http_req_failed (จำนวน request ที่ล้มเหลว): 0% (0 จาก 14,804)
    http_req_receiving:
        เวลาเฉลี่ย: 10.29 ms
        สูงสุด: 317.67 ms
    http_req_waiting (เวลาเฉลี่ยที่รอ response):
        ค่าเฉลี่ย: 3.87 วินาที
        สูงสุด: 38.05 วินาที
### 5. Iteration Metrics (การทำซ้ำ):
    iteration_duration:
        ค่าเฉลี่ย: 4.88 วินาที
        ต่ำสุด: 1.07 วินาที
        สูงสุด: 39.09 วินาที
    iterations:
        รวม: 14,804 ครั้ง
        อัตราเฉลี่ย: 17.62 iterations/s
### 6. Virtual Users Metrics (Virtual Users):
    VUs (จำนวนผู้ใช้งานจริง) ขณะทดสอบ: 1 VU
    VUs_max (จำนวนผู้ใช้งานสูงสุด): 100 VUs

### ⚠️ สรุปผลลัพธ์:
ผลการทดสอบ Stress Test: ในการจำลองผู้ใช้งานสูงสุด 100 ทั้งหมดสำเร็จ 100% โดยไม่มีการล้มเหลว (0% failure rate) โดยมีเวลาการร้องขอเฉลี่ย 3.88 วินาที และ 95% ของคำร้องใช้เวลาน้อยกว่า 7.49 วินาที แสดงให้เห็นว่าระบบสามารถรองรับโหลดสูงได้ดีและทำงานได้อย่างราบรื่นภายใต้การทดสอบนี้