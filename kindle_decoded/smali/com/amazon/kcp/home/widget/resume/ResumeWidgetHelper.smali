.class public interface abstract Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;
.super Ljava/lang/Object;
.source "BaseResumeWidgetProvider.kt"


# virtual methods
.method public abstract getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserItemsCount()I
.end method

.method public abstract setResumeOnClickHandler(Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;)V
.end method
