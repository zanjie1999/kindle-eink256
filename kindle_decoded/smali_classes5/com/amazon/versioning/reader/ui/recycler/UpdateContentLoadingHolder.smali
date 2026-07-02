.class public Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UpdateContentLoadingHolder.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private final updatedContentLoadingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;->updatedContentLoadingView:Landroid/view/View;

    return-void
.end method
