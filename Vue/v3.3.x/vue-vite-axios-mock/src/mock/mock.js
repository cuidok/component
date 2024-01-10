import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';

// create new instance of axios with a custom config
const instance = axios.create();

// create MockAdapter instance for axios instance
const mock = new MockAdapter(instance, { delayResponse: 2000 });

mock.onGet('/server/hi').reply(200, {
    code: 200,
    data: 'Hello, world!'
});

export default instance;