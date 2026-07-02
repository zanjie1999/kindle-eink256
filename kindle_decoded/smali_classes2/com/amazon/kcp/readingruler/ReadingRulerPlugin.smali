.class public final Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;
.super Ljava/lang/Object;
.source "ReadingRulerPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    name = "ReadingRulerPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private accessibilityStateHandler:Lcom/amazon/kcp/readingruler/ReadingRulerAccessibilityStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->Companion:Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 12
    sput-object p1, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 13
    new-instance p1, Lcom/amazon/kcp/readingruler/ReadingRulerAccessibilityStateHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/readingruler/ReadingRulerAccessibilityStateHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->accessibilityStateHandler:Lcom/amazon/kcp/readingruler/ReadingRulerAccessibilityStateHandler;

    return-void
.end method
