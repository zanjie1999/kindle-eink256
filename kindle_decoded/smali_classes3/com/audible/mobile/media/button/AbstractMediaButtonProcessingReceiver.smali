.class public abstract Lcom/audible/mobile/media/button/AbstractMediaButtonProcessingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractMediaButtonProcessingReceiver.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/media/button/AbstractMediaButtonProcessingReceiver;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/media/button/AbstractMediaButtonProcessingReceiver;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/audible/mobile/media/button/AbstractMediaButtonProcessingReceiver;->logger:Lorg/slf4j/Logger;

    const-string v1, "AbstractMediaButtonProcessingReceiver onReceive"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class v0, Lcom/audible/mobile/media/button/MediaButtonManager;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/media/button/MediaButtonManager;

    .line 27
    invoke-interface {p1, p2}, Lcom/audible/mobile/media/button/MediaButtonManager;->processIntent(Landroid/content/Intent;)V

    return-void
.end method
