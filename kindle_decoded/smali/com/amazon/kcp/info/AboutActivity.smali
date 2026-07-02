.class public Lcom/amazon/kcp/info/AboutActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;,
        Lcom/amazon/kcp/info/AboutActivity$DetailItem;,
        Lcom/amazon/kcp/info/AboutActivity$GroupItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

.field private detailItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/info/AboutActivity$DetailItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/info/AboutActivity$GroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/kcp/info/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/AboutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    return-object p0
.end method

.method private populateAndroidInformation()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getAndroidApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->android_section:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceRequirements;->doesAndroidVersionMeetRequirements()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/amazon/kcp/info/AboutActivity$GroupItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V

    .line 173
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->android_sdk_version:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->android_api_level:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->android_app_target_sdk_version:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private populateCopyrightCurrentYear()V
    .locals 5

    .line 290
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->copyright_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 293
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->app_copyright:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private populateCpuInformation()V
    .locals 9

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getAvailableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 195
    invoke-virtual {v3}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getMinCpuSpeed()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d MHz"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    iget-object v7, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 197
    invoke-virtual {v7}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getMaxCpuSpeed()J

    move-result-wide v7

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    new-instance v4, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->cpu_section:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceRequirements;->doesCpuMeetRequirements()Z

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/amazon/kcp/info/AboutActivity$GroupItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V

    .line 199
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v4, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->cpu_processors:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->cpu_min_speed:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4, v2}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->cpu_max_speed:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private populateDisplayInformation()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 265
    invoke-virtual {v1}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDisplayWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDisplayHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%d x %d"

    .line 264
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 266
    iget-object v4, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 267
    invoke-virtual {v4}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDisplayDiagnonal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "%1.2f\""

    .line 266
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v4, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDisplaySize()Ljava/lang/String;

    move-result-object v4

    .line 270
    iget-object v5, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    new-instance v6, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->display_section:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceRequirements;->doesDisplayMeetRequirements()Z

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/amazon/kcp/info/AboutActivity$GroupItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V

    .line 270
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v6, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->display_resolution:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v6, Lcom/amazon/kindle/librarymodule/R$string;->display_diagonal:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6, v1}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->display_size:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 280
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%1.2f dpi"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->display_density:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private populateDisplayItems()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    goto :goto_1

    .line 153
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateAndroidInformation()V

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateCpuInformation()V

    .line 158
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateRamInformation()V

    .line 159
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateStorageInformation()V

    .line 160
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateDisplayInformation()V

    .line 161
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateCopyrightCurrentYear()V

    return-void
.end method

.method private populateRamInformation()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 216
    invoke-virtual {v2}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getTotalMemory()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "%1.2f MB"

    .line 215
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 217
    iget-object v5, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 218
    invoke-virtual {v5}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getMaxApplicationMemory()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v3

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v4

    .line 217
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->ram_section:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceRequirements;->doesRamMeetRequirements()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/amazon/kcp/info/AboutActivity$GroupItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V

    .line 220
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->ram_total_physical:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->ram_max_memory:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private populateStorageInformation()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 236
    invoke-virtual {v2}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDataPartitionSize()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "%1.2f MB"

    .line 235
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Object;

    .line 237
    iget-object v6, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 238
    invoke-virtual {v6}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDataPartitionAvailable()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v3

    div-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    .line 237
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 240
    iget-object v6, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 241
    iget-object v8, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 242
    invoke-virtual {v8}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getExternalStorageSize()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v8, v3

    div-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    .line 241
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    .line 243
    iget-object v8, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 244
    invoke-virtual {v8}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getExternalStorageAvailable()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v8, v3

    div-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v4

    .line 243
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/amazon/kcp/info/AboutActivity;->groupItemList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->storage_section:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceRequirements;->doesStorageMeetRequirements()Z

    move-result v8

    invoke-direct {v3, p0, v4, v8}, Lcom/amazon/kcp/info/AboutActivity$GroupItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v3, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->storage_data_total:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_data_available:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v5}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_ext_state:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v6}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_ext_total:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v7}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_ext_available:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/amazon/kcp/info/AboutActivity$DetailItem;-><init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity;->detailItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setUpGestureView()V
    .locals 3

    .line 109
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->gestures:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 110
    sget v1, Lcom/amazon/kindle/librarymodule/R$raw;->gestures:I

    invoke-static {p0, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lcom/amazon/kcp/info/AboutActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kcp/info/AboutActivity$1;-><init>(Lcom/amazon/kcp/info/AboutActivity;Landroid/gesture/GestureLibrary;)V

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 69
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->about_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 72
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->version:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 77
    invoke-static {v3}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    .line 78
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 80
    sget-object v4, Lcom/amazon/kcp/info/AboutActivity;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve android:versionCode and android:versionName"

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, ""

    .line 83
    :goto_0
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v5

    .line 87
    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->brazil_package_version:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v0

    const/4 v0, 0x1

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const-string/jumbo v0, "versionName=%s%nversionCode=%s%n%nKindleVersionNumber=%s%nKindleVersionNumberCode=%s%nBRAZIL_PACKAGE_VERSION=%s"

    .line 88
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity;->androidDeviceInfo:Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 98
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->populateDisplayItems()V

    .line 100
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->about_device_info_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    .line 101
    new-instance v0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;-><init>(Lcom/amazon/kcp/info/AboutActivity;Lcom/amazon/kcp/info/AboutActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 103
    invoke-direct {p0}, Lcom/amazon/kcp/info/AboutActivity;->setUpGestureView()V

    .line 104
    new-instance p1, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    return-void
.end method
