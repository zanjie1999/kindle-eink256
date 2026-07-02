.class Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
.super Ljava/lang/Exception;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonRetriableFailureException"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field final isResponseEnabled:Z

.field final status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V
    .locals 0

    .line 1077
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1086
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V
    .locals 1

    .line 1082
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 0

    .line 1091
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1092
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->status:Ljava/lang/String;

    .line 1093
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->action:Ljava/lang/String;

    .line 1094
    iput-boolean p4, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->isResponseEnabled:Z

    return-void
.end method
