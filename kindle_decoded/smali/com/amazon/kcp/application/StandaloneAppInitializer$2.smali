.class final Lcom/amazon/kcp/application/StandaloneAppInitializer$2;
.super Ljava/lang/Object;
.source "StandaloneAppInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneAppInitializer;->initSettingsCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAppInitializer$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAppInitializer$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/dcp/settings/SettingsCache;->setContext(Landroid/content/Context;)V

    return-void
.end method
