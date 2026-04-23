import pg from "pg";
const { Pool } = pg;

async function testConnection() {
  console.log("🦊 URL Target:", process.env.DATABASE_URL);

  const pool = new Pool({
    connectionString: process.env.DATABASE_URL!,
    ssl: { rejectUnauthorized: false },
  });

  try {
    console.log("⏳ Sedang mencoba Handshake ke AWS RDS...");
    const res = await pool.query("SELECT current_database(), now()");
    console.log("✅ SUKSES NAIK! Response DB:", res.rows);
  } catch (err) {
    console.error("❌ GAGAL MURNI DARI PG:", err);
  } finally {
    await pool.end();
  }
}

testConnection();
