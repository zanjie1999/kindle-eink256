.class final Lcom/amazon/kindle/krx/PluginInitializer$InitTask;
.super Ljava/lang/Object;
.source "PluginInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/PluginInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitTask"
.end annotation


# instance fields
.field final pluginName:Ljava/lang/String;

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->pluginName:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->runnable:Ljava/lang/Runnable;

    return-void
.end method
