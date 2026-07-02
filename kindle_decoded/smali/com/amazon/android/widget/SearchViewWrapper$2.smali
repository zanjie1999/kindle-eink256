.class Lcom/amazon/android/widget/SearchViewWrapper$2;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V
    .locals 0

    .line 133
    iput-object p2, p0, Lcom/amazon/android/widget/SearchViewWrapper$2;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper$2;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
