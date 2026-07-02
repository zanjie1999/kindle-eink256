.class public Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException;
.super Ljava/lang/Exception;
.source "ContentUpdateDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateRequestException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
