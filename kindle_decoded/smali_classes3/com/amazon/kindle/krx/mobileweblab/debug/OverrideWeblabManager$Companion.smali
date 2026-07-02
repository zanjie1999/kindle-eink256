.class public final Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;
.super Ljava/lang/Object;
.source "OverrideWeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 29
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->access$getDateFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
