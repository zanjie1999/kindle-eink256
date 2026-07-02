.class public Lcom/amazon/kcp/library/AllDownloadToggleDelegate;
.super Ljava/lang/Object;
.source "AllDownloadToggleDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final toggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->instance:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->listeners:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$1;-><init>(Lcom/amazon/kcp/library/AllDownloadToggleDelegate;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->toggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/AllDownloadToggleDelegate;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/library/AllDownloadToggleDelegate;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->instance:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    return-object v0
.end method


# virtual methods
.method public addStateChangeListener(Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getState(Landroid/app/Activity;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 91
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/library/widget/DownloadedToggle;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_all:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->listeners:Ljava/util/ArrayList;

    .line 57
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/library/widget/DownloadedToggle;

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->toggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/library/widget/DownloadedToggle;->setOnToggleListener(Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;)V

    :cond_0
    return-void
.end method

.method public setState(Landroid/app/Activity;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 3

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/library/widget/DownloadedToggle;

    .line 76
    sget-object v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting library groupType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 78
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_downloaded:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/library/widget/DownloadedToggle;->check(I)V

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_all:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/library/widget/DownloadedToggle;->check(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setVisibility(Landroid/app/Activity;I)V
    .locals 1

    .line 102
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
