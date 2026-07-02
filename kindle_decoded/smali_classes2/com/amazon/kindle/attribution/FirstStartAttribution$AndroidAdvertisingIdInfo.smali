.class Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;
.super Ljava/lang/Object;
.source "FirstStartAttribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/attribution/FirstStartAttribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidAdvertisingIdInfo"
.end annotation


# instance fields
.field private adId:Ljava/lang/String;

.field private isLAT:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->adId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->isLAT:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/attribution/FirstStartAttribution$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->adId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->adId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->isLAT:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->isLAT:Z

    return p1
.end method
