.class public final Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$Factory;
.super Ljava/lang/Object;
.source "LwaConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$1;)V

    return-object v0
.end method
