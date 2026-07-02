.class public Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;
.super Ljava/lang/Object;
.source "ChapterInfo.java"


# instance fields
.field private chapters:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chapters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private durationMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime_length_ms"
    .end annotation
.end field

.field private durationSec:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime_length_sec"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
