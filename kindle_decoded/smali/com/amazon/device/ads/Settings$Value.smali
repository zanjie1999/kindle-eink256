.class Lcom/amazon/device/ads/Settings$Value;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Value"
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public isTransientData:Z

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p2, p0, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    .line 582
    iput-object p3, p0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    return-void
.end method
