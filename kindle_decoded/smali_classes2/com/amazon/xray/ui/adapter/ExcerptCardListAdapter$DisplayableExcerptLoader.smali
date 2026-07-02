.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayableExcerptLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader<",
        "Lcom/amazon/xray/model/object/DisplayableExcerpt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V

    return-void
.end method


# virtual methods
.method public loadInBackground(I)Lcom/amazon/xray/model/object/DisplayableExcerpt;
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$900(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/model/object/DisplayableExcerptFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$800(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->getDisplayableExcerpt(Lcom/amazon/xray/model/object/Excerpt;)Lcom/amazon/xray/model/object/DisplayableExcerpt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadInBackground(I)Ljava/lang/Object;
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$DisplayableExcerptLoader;->loadInBackground(I)Lcom/amazon/xray/model/object/DisplayableExcerpt;

    move-result-object p1

    return-object p1
.end method
