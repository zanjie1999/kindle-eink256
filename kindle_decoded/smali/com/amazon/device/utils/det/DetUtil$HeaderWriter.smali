.class public Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;
.super Ljava/lang/Object;
.source "DetUtil.java"

# interfaces
.implements Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/utils/det/DetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderWriter"
.end annotation


# static fields
.field private static final HEADER_DELIMETER:Ljava/lang/String; = ": "

.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "null"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 128
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, ": "

    .line 129
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 130
    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 131
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
