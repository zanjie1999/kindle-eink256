.class public final Lcom/amazon/whispersync/dp/utils/FailFast;
.super Ljava/lang/Object;
.source "FailFast.java"


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dp/utils/FailFast;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFailFastMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FailFast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "expected<"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> actual<"

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> "

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 190
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_0

    .line 191
    aget-object p1, p2, p0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildFailFastMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FailFast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 202
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 203
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expectEquals(II)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectEquals(II[Ljava/lang/Object;)V
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static expectEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectEquals(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 126
    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static expectFalse(Z)V
    .locals 1

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectFalse(Z[Ljava/lang/Object;)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    .line 65
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static expectNotNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectNotNull(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 103
    :goto_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static expectNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectNull(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 84
    :goto_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static expectTrue(Z)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs expectTrue(Z[Ljava/lang/Object;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->failFastInternal(Z[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs failFastInternal(II[Ljava/lang/Object;)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/dp/utils/FailFast;->buildFailFastMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {p0}, Lcom/amazon/whispersync/dp/utils/FailFast;->logFailFastMessage(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/amazon/whispersync/dp/utils/FailFast;->logStackTrace()V

    .line 168
    new-instance p0, Lcom/amazon/whispersync/dp/utils/FailFastException;

    invoke-direct {p0}, Lcom/amazon/whispersync/dp/utils/FailFastException;-><init>()V

    throw p0
.end method

.method private static varargs failFastInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 155
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/dp/utils/FailFast;->buildFailFastMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {p0}, Lcom/amazon/whispersync/dp/utils/FailFast;->logFailFastMessage(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/amazon/whispersync/dp/utils/FailFast;->logStackTrace()V

    .line 158
    new-instance p0, Lcom/amazon/whispersync/dp/utils/FailFastException;

    invoke-direct {p0}, Lcom/amazon/whispersync/dp/utils/FailFastException;-><init>()V

    throw p0
.end method

.method private static varargs failFastInternal(Z[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->buildFailFastMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0}, Lcom/amazon/whispersync/dp/utils/FailFast;->logFailFastMessage(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/amazon/whispersync/dp/utils/FailFast;->logStackTrace()V

    .line 177
    new-instance p0, Lcom/amazon/whispersync/dp/utils/FailFastException;

    invoke-direct {p0}, Lcom/amazon/whispersync/dp/utils/FailFastException;-><init>()V

    throw p0
.end method

.method private static logFailFastMessage(Ljava/lang/String;)V
    .locals 3

    .line 211
    sget-object v0, Lcom/amazon/whispersync/dp/utils/FailFast;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {v0, v2, p0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static logStackTrace()V
    .locals 7

    .line 215
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v4, Lcom/amazon/whispersync/dp/utils/FailFast;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, ""

    invoke-virtual {v4, v6, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
