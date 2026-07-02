.class public Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
.super Ljava/lang/Object;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureValue"
.end annotation


# instance fields
.field private mUnit:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field private mValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mValue:F

    .line 174
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    iput-object p1, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mUnit:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-void
.end method

.method public constructor <init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p1, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mValue:F

    .line 184
    iput-object p2, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mUnit:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-void
.end method


# virtual methods
.method public getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mUnit:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->mValue:F

    return v0
.end method
