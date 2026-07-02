.class public final Lcom/amazon/kcp/store/KfaStoreFragmentProvider;
.super Ljava/lang/Object;
.source "KfaStoreFragmentProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/store/StoreFragmentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/kcp/store/StoreFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreFragment;-><init>()V

    return-object v0
.end method
