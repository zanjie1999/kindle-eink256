.class Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
.super Ljava/lang/Exception;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetriableFailureException"
.end annotation


# instance fields
.field final action:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1056
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;->action:Ljava/lang/String;

    return-void
.end method
