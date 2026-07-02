.class public final Lcom/amazon/messaging/odot/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static volatile output:Ljava/io/PrintStream;

.field private static volatile threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/util/Log;->LINE_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x4

    .line 22
    sput v0, Lcom/amazon/messaging/odot/util/Log;->threshold:I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 104
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-static {v0, p0, p1, v1}, Lcom/amazon/messaging/odot/util/Log;->output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    .line 164
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    sget-object v1, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 166
    invoke-static {v0, p0, p1, v1}, Lcom/amazon/messaging/odot/util/Log;->output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 174
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    .line 176
    invoke-static {v0, p0, p1, p2}, Lcom/amazon/messaging/odot/util/Log;->output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    .line 124
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 126
    invoke-static {v0, p0, p1, v1}, Lcom/amazon/messaging/odot/util/Log;->output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1

    .line 80
    sget v0, Lcom/amazon/messaging/odot/util/Log;->threshold:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Log;->toChar(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 213
    sget-object p0, Lcom/amazon/messaging/odot/util/Log;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 215
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    sget-object p0, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static toChar(I)C
    .locals 1

    const/16 v0, 0x57

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x58

    return p0

    :pswitch_0
    const/16 p0, 0x4f

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/16 p0, 0x45

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    const/16 p0, 0x49

    return p0

    :pswitch_5
    const/16 p0, 0x44

    return p0

    :pswitch_6
    const/16 p0, 0x56

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    .line 144
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/amazon/messaging/odot/util/Log;->output:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, p0, p1, v1}, Lcom/amazon/messaging/odot/util/Log;->output(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
