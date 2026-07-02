.class public Lcom/amazon/whispersync/dcp/framework/ServiceBinderFactory;
.super Ljava/lang/Object;
.source "ServiceBinderFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/ServiceBinder;
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinderFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-object v0
.end method
