import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const TokenModule = buildModule("TokenModule", (m) => {
  const name = m.getParameter("_name", "GEN");
  const symbol = m.getParameter("_symbol", "GEN");

  const token = m.contract("Lock", [name, symbol]);

  return { token };
});

export default TokenModule;
