.class Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchQueryWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/search/SearchActivity;Lcom/amazon/kcp/search/SearchActivity$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/SearchActivity;->onSearchTextChanged(Ljava/lang/String;)V

    return-void
.end method
