.class public final Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;
.super Ljava/lang/Object;
.source "ReadingRulerPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method
