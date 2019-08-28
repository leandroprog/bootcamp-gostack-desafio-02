import jwt from 'jsonwebtoken';
import { promisify } from 'util';

import authConfig from '../../config/auth';

export default async (req, res, next) => {
  const tokenHeader = req.headers.authorization;

  if (!tokenHeader) {
    return res.status(401).json({ error: 'Token inválido' });
  }
  const [, token] = tokenHeader.split(' ');
  req.token = token;

  try {
    const decode = await promisify(jwt.verify)(token, authConfig.secret);
    req.userId = decode.id;
    return next();
  } catch (error) {
    return res.status(401).json({ error: 'Token inválido' });
  }
};
