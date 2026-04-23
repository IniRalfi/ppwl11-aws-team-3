import { prisma } from "./db";

const users = [
  { name: "Leo Tobing", email: "leo@example.com" },
  { name: "John Doe", email: "john@example.com" },
  { name: "Jane Smith", email: "jane@example.com" },
];

async function main() {
  for (const user of users) {
    await prisma.user.upsert({
      where: { email: user.email },
      update: {},
      create: user,
    });
  }
  console.log("Seed selesai ✅");
}

main().finally(() => prisma.$disconnect());
