.class public Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceThrottlingException;
.super Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceErrorException;
.source "ServiceThrottlingException.java"


# static fields
.field private static final serialVersionUID:J = 0x271c7f88968308ddL


# instance fields
.field private final mTimeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceErrorException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-wide p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceThrottlingException;->mTimeoutMillis:J

    return-void
.end method


# virtual methods
.method public getTimeoutMillis()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceThrottlingException;->mTimeoutMillis:J

    return-wide v0
.end method
