-- CreateEnum
CREATE TYPE "FinishingType" AS ENUM ('CORE_AND_SHELL', 'SEMI_FINISHED', 'FULLY_FINISHED');

-- CreateEnum
CREATE TYPE "ViewType" AS ENUM ('GARDEN', 'POOL', 'STREET', 'SEA', 'NILE');

-- CreateEnum
CREATE TYPE "AreaType" AS ENUM ('BUILT_UP', 'LAND', 'ROOF');

-- CreateTable
CREATE TABLE "Developer" (
    "id" TEXT NOT NULL,
    "nameEn" TEXT NOT NULL,
    "nameAr" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Developer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Compound" (
    "id" TEXT NOT NULL,
    "nameEn" TEXT NOT NULL,
    "nameAr" TEXT NOT NULL,
    "developerId" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Compound_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Unit" (
    "id" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "compoundId" TEXT NOT NULL,
    "area" DOUBLE PRECISION NOT NULL,
    "areaType" "AreaType" NOT NULL,
    "finishing" "FinishingType" NOT NULL,
    "view" "ViewType" NOT NULL,
    "floor" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Unit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PaymentPlan" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "downPayment" DOUBLE PRECISION NOT NULL,
    "years" INTEGER NOT NULL,
    "monthlyEGP" DOUBLE PRECISION,
    "handoverDate" TIMESTAMP(3) NOT NULL,
    "compoundId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PaymentPlan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Broker" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Broker_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lead" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "budget" DOUBLE PRECISION,
    "brokerId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Lead_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Showing" (
    "id" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "leadId" TEXT NOT NULL,
    "brokerId" TEXT NOT NULL,
    "listingId" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Showing_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Listing" (
    "id" TEXT NOT NULL,
    "unitId" TEXT NOT NULL,
    "brokerId" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "currency" TEXT NOT NULL DEFAULT 'EGP',
    "active" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Listing_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CoBrokingAgreement" (
    "id" TEXT NOT NULL,
    "listingId" TEXT NOT NULL,
    "initiatorId" TEXT NOT NULL,
    "receiverId" TEXT NOT NULL,
    "split" DOUBLE PRECISION NOT NULL,
    "status" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "CoBrokingAgreement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TitleDeed" (
    "id" TEXT NOT NULL,
    "unitId" TEXT NOT NULL,
    "pdfHash" TEXT NOT NULL,
    "verified" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TitleDeed_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "hassan_score_events" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "hassan_id" TEXT NOT NULL,
    "lead_id" TEXT,
    "criteria_breakdown" JSONB NOT NULL,
    "total" INTEGER NOT NULL,
    "error_kind" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "hassan_score_events_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "coaching_sessions" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "hassan_id" TEXT NOT NULL,
    "best_moments" JSONB NOT NULL,
    "worst_moments" JSONB NOT NULL,
    "micro_quiz" JSONB NOT NULL,
    "sent_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "opened_at" TIMESTAMP(3),

    CONSTRAINT "coaching_sessions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "boss_metrics" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "mrr_egp" INTEGER NOT NULL,
    "activation_rate" DOUBLE PRECISION NOT NULL,
    "ai_quality_score" DOUBLE PRECISION NOT NULL,
    "close_rate" DOUBLE PRECISION NOT NULL,
    "hassan_avg_score" DOUBLE PRECISION NOT NULL,
    "nps" DOUBLE PRECISION NOT NULL,
    "churn_risk" DOUBLE PRECISION NOT NULL,
    "time_to_first_close_days" INTEGER NOT NULL,
    "recorded_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "boss_metrics_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "boss_audit_overrides" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "boss_id" TEXT NOT NULL,
    "lead_id" TEXT NOT NULL,
    "from_state" TEXT NOT NULL,
    "to_state" TEXT NOT NULL,
    "reason" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "boss_audit_overrides_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "boss_tone_presets" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "preset" TEXT NOT NULL,
    "custom_additions" TEXT,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "updated_by" TEXT NOT NULL,

    CONSTRAINT "boss_tone_presets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "boss_pricing_guardrails" (
    "id" TEXT NOT NULL,
    "tenant_id" TEXT NOT NULL,
    "compound_id" TEXT,
    "min_price_egp" INTEGER NOT NULL,
    "max_discount_pct" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_by" TEXT NOT NULL,

    CONSTRAINT "boss_pricing_guardrails_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Unit_code_key" ON "Unit"("code");

-- CreateIndex
CREATE UNIQUE INDEX "Broker_phone_key" ON "Broker"("phone");

-- CreateIndex
CREATE UNIQUE INDEX "TitleDeed_unitId_key" ON "TitleDeed"("unitId");

-- CreateIndex
CREATE INDEX "hassan_score_events_tenant_id_hassan_id_created_at_idx" ON "hassan_score_events"("tenant_id", "hassan_id", "created_at");

-- CreateIndex
CREATE INDEX "hassan_score_events_lead_id_idx" ON "hassan_score_events"("lead_id");

-- CreateIndex
CREATE INDEX "coaching_sessions_tenant_id_hassan_id_sent_at_idx" ON "coaching_sessions"("tenant_id", "hassan_id", "sent_at");

-- CreateIndex
CREATE UNIQUE INDEX "boss_metrics_tenant_id_key" ON "boss_metrics"("tenant_id");

-- CreateIndex
CREATE INDEX "boss_metrics_tenant_id_recorded_at_idx" ON "boss_metrics"("tenant_id", "recorded_at");

-- CreateIndex
CREATE INDEX "boss_audit_overrides_tenant_id_created_at_idx" ON "boss_audit_overrides"("tenant_id", "created_at");

-- CreateIndex
CREATE UNIQUE INDEX "boss_tone_presets_tenant_id_key" ON "boss_tone_presets"("tenant_id");

-- CreateIndex
CREATE UNIQUE INDEX "boss_pricing_guardrails_tenant_id_compound_id_key" ON "boss_pricing_guardrails"("tenant_id", "compound_id");

-- AddForeignKey
ALTER TABLE "Compound" ADD CONSTRAINT "Compound_developerId_fkey" FOREIGN KEY ("developerId") REFERENCES "Developer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Unit" ADD CONSTRAINT "Unit_compoundId_fkey" FOREIGN KEY ("compoundId") REFERENCES "Compound"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentPlan" ADD CONSTRAINT "PaymentPlan_compoundId_fkey" FOREIGN KEY ("compoundId") REFERENCES "Compound"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lead" ADD CONSTRAINT "Lead_brokerId_fkey" FOREIGN KEY ("brokerId") REFERENCES "Broker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Showing" ADD CONSTRAINT "Showing_leadId_fkey" FOREIGN KEY ("leadId") REFERENCES "Lead"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Showing" ADD CONSTRAINT "Showing_brokerId_fkey" FOREIGN KEY ("brokerId") REFERENCES "Broker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Showing" ADD CONSTRAINT "Showing_listingId_fkey" FOREIGN KEY ("listingId") REFERENCES "Listing"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Listing" ADD CONSTRAINT "Listing_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES "Unit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Listing" ADD CONSTRAINT "Listing_brokerId_fkey" FOREIGN KEY ("brokerId") REFERENCES "Broker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CoBrokingAgreement" ADD CONSTRAINT "CoBrokingAgreement_listingId_fkey" FOREIGN KEY ("listingId") REFERENCES "Listing"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CoBrokingAgreement" ADD CONSTRAINT "CoBrokingAgreement_initiatorId_fkey" FOREIGN KEY ("initiatorId") REFERENCES "Broker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CoBrokingAgreement" ADD CONSTRAINT "CoBrokingAgreement_receiverId_fkey" FOREIGN KEY ("receiverId") REFERENCES "Broker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TitleDeed" ADD CONSTRAINT "TitleDeed_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES "Unit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
