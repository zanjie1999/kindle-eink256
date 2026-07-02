.class public Lcom/amazon/sitb/android/reftag/ReftagService;
.super Ljava/lang/Object;
.source "ReftagService.java"


# static fields
.field private static final NOT_SET:Ljava/lang/String; = "NOT_SET"


# instance fields
.field private final REF_PREFIX:Ljava/lang/String;

.field private final deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Landroid/content/res/Resources;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ref_"

    .line 19
    iput-object v0, p0, Lcom/amazon/sitb/android/reftag/ReftagService;->REF_PREFIX:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/amazon/sitb/android/reftag/ReftagService;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    .line 24
    iput-object p2, p0, Lcom/amazon/sitb/android/reftag/ReftagService;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private getReftagHelper(I)Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/sitb/android/reftag/ReftagService;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/amazon/sitb/android/reftag/ReftagService;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOT_SET"

    .line 35
    invoke-static {v1, v2}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reftag for prefix id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not set"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getReftag(I)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftagHelper(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ref_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
