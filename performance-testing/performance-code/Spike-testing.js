import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  stages: [
    { duration: '10s', target: 100 }, 
    { duration: '2m', target: 2000 }, 
    { duration: '10s', target: 1000 }, 

    { duration: '30s', target: 0 },  
  ],
};
export default () => {
  const urlRes = http.get('http://45.136.236.146:8081');

  sleep(1);
};