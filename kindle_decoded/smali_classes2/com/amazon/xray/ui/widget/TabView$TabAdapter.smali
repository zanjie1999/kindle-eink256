.class public abstract Lcom/amazon/xray/ui/widget/TabView$TabAdapter;
.super Ljava/lang/Object;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TabAdapter"
.end annotation


# instance fields
.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method protected getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public abstract getLabel(I)Ljava/lang/String;
.end method

.method public getStateKey(I)Ljava/lang/String;
    .locals 0

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
