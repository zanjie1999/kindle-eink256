.class Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$1;
.super Ljava/lang/Object;
.source "LogFilePrintWriterFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$1;->get()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Calendar;
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
