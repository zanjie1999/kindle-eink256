.class public Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
.super Ljava/lang/Object;
.source "IShadowProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shadow"
.end annotation


# instance fields
.field public mPenumbraColor:D

.field public mPenumbraX:D

.field public mPenumbraY:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    .line 6
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    .line 7
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    return-void
.end method
