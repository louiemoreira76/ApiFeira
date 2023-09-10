import 'dotenv/config';
import { conx } from './repository/connecion.js';

import express from 'express';
import cors from 'cors';

import comandoController from './controller/comandoController.js';

const server = express();
server.use(cors());
server.use(express.json());

server.use(comandoController)

server.listen(process.env.PORT, () => console.log(`API Conectada! ${process.env.PORT}`));