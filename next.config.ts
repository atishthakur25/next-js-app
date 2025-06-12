import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  apps: [{
    name: "next-app",
    script: "node_modules/next/dist/bin/next",
    args: "start -p 3000",
    env: {
      NODE_ENV: "production"
    }
  }],
  reactStrictMode : true,
  output: "standalone",
};

export default nextConfig;
