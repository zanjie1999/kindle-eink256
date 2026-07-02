.class Lcom/amazon/klo/list/PageListAdapter$Retryable$1;
.super Ljava/lang/Object;
.source "PageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/PageListAdapter$Retryable;->buildRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/list/PageListAdapter$Retryable;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/PageListAdapter$Retryable;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable$1;->this$1:Lcom/amazon/klo/list/PageListAdapter$Retryable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable$1;->this$1:Lcom/amazon/klo/list/PageListAdapter$Retryable;

    iget v1, v0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->remainingAttempts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->remainingAttempts:I

    .line 491
    invoke-virtual {v0}, Lcom/amazon/klo/list/PageListAdapter$Retryable;->attempt()V

    return-void
.end method
