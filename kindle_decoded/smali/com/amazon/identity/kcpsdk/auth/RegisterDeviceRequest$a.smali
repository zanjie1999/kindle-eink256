.class public Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field di:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;->di:Ljava/lang/String;

    return-void
.end method
