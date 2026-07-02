.class public final Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;
.super Ljava/lang/Object;
.source "ViewHolderManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getViewHolder(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewHolderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 26
    new-instance p1, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)V

    return-object p1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 25
    :cond_1
    new-instance p1, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)V

    return-object p1
.end method


# virtual methods
.method public final getPerformanceMetricName(Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "viewHolderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_SELECT_FONT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026.AA_MENU_KSDK_SELECT_FONT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
