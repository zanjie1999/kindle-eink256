.class public abstract Lcom/amazon/xray/model/loader/ContentLoader$Task;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader$Task;->cancelled:Z

    return-void
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected isCancelled()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader$Task;->cancelled:Z

    return v0
.end method
