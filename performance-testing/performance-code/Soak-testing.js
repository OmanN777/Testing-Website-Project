import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  stages: [
    { duration: '2m', target: 100 }, 
    { duration: '10m', target: 100 }, 
    { duration: '2m', target: 0 }, 
  ],
};
export default () => {
  const urlRes = http.get('http://45.136.236.146:8081');

  sleep(1);
};