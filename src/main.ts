import pino from "pino";
import config from "./config";

const logger = pino();

const retry = config.get("retry");
logger.info(retry);
