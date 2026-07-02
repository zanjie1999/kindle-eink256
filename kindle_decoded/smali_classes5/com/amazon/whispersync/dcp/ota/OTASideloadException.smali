.class public Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
.super Ljava/lang/Exception;
.source "OTASideloadException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException;->mErrorType:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 101
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException;->mErrorType:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException;->mErrorType:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-object v0
.end method
