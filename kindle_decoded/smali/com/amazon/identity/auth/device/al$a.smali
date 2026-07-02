.class Lcom/amazon/identity/auth/device/al$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private df:Landroid/content/res/XmlResourceParser;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/identity/auth/device/al$a;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/amazon/identity/auth/device/al$a;->df:Landroid/content/res/XmlResourceParser;

    return-void
.end method


# virtual methods
.method public ae()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/al$a;->df:Landroid/content/res/XmlResourceParser;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/device/al$a;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
