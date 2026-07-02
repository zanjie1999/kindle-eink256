.class Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;
.super Ljava/lang/Object;
.source "GetLaunchInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetLaunchInfoBody"
.end annotation


# instance fields
.field private apiVersion:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/service/LaunchInfoContext;Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;->language:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;->context:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;->apiVersion:Ljava/lang/String;

    return-void
.end method
