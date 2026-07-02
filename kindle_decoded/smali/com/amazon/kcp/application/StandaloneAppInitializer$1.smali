.class final Lcom/amazon/kcp/application/StandaloneAppInitializer$1;
.super Ljava/lang/Object;
.source "StandaloneAppInitializer.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/CrashDetailsCollectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneAppInitializer;->initClientMonitoring(Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$crashIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAppInitializer$1;->val$crashIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAppInitializer$1;->val$crashIdentifier:Ljava/lang/String;

    const-string v1, "crashIdentifier"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
