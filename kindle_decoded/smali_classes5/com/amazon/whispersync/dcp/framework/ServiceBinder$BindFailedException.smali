.class Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;
.super Ljava/lang/Exception;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$BindFailedException;-><init>()V

    return-void
.end method
