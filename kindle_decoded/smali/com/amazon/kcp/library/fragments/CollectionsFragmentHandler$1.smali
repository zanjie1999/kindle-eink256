.class Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$1;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;
.source "CollectionsFragmentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/krx/collections/CollectionFilter;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 92
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
