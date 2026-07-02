.class final Lcom/amazon/device/ads/CalendarEventParameters$1;
.super Ljava/util/ArrayList;
.source "CalendarEventParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/CalendarEventParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mmZ"

    .line 45
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm"

    .line 46
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "yyyy-MM-dd"

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
