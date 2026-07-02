.class public Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;,
        Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;,
        Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 103
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
