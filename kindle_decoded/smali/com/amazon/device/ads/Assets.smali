.class Lcom/amazon/device/ads/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Assets$CircuitBreaker;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Assets"

.field private static final VERSION:I = 0x5

.field private static final VERSION_SETTINGS_KEY:Ljava/lang/String; = "mraid-assets-version"

.field private static instance:Lcom/amazon/device/ads/Assets;


# instance fields
.field private baseFilePath:Ljava/lang/String;

.field private final fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/amazon/device/ads/Assets;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/DefaultFileHandlerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/DefaultFileHandlerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Assets;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Metrics;)V

    sput-object v0, Lcom/amazon/device/ads/Assets;->instance:Lcom/amazon/device/ads/Assets;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Metrics;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Assets;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Assets;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 50
    iput-object p1, p0, Lcom/amazon/device/ads/Assets;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 51
    iput-object p2, p0, Lcom/amazon/device/ads/Assets;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    .line 52
    iput-object p3, p0, Lcom/amazon/device/ads/Assets;->settings:Lcom/amazon/device/ads/Settings;

    .line 53
    iput-object p4, p0, Lcom/amazon/device/ads/Assets;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 54
    invoke-virtual {p0}, Lcom/amazon/device/ads/Assets;->getBaseFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/Assets;->baseFilePath:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/Assets;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/device/ads/Assets;->instance:Lcom/amazon/device/ads/Assets;

    return-object v0
.end method

.method private writeAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;[BLjava/lang/String;)V
    .locals 3

    .line 152
    invoke-static {p1}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->access$000(Lcom/amazon/device/ads/Assets$CircuitBreaker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    invoke-interface {v0, p3}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileOutputHandler(Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    iget-object p1, p0, Lcom/amazon/device/ads/Assets;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Could not create output handler for asset file."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_1
    sget-object v1, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->OVERWRITE:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/FileOutputHandler;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    iget-object p2, p0, Lcom/amazon/device/ads/Assets;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "Caught IOException while writing asset to disk: %s"

    invoke-virtual {p2, p3, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {p1}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->access$100(Lcom/amazon/device/ads/Assets$CircuitBreaker;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {p1}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->access$100(Lcom/amazon/device/ads/Assets$CircuitBreaker;)V

    .line 178
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    return-void
.end method

.method private writeAssetsToDisk()Z
    .locals 5

    .line 121
    new-instance v0, Lcom/amazon/device/ads/Assets$CircuitBreaker;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;-><init>(Lcom/amazon/device/ads/Assets;)V

    const-string v1, "amazon_ads_close_normal.png"

    .line 122
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "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"

    invoke-direct {p0, v0, v3, v2}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "amazon_ads_close_pressed.png"

    .line 123
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "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"

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "amazon_ads_close.png"

    .line 124
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAElBMVEUzMzMAAAAzMzMzMzMzMzMzMzP0GXmbAAAABnRSTlMAAJl8CjlW71gJAAAA40lEQVR42u2Yuw7DMAzEUsf+/1/u1gwdGIMoLkDvZoEE8rAlHa8fp4IKKqigggoqeLhgnfO4nXmuYzNrjMvA/DHWNv8y3OF/G5h/GZi/azjHfcP8FG8IJhig1Bi40Bu4zBu4yBu4xBuYbwzMNwbmGwPzjYH5xsB8ZyC+NxDfG4jvDcT3BuJ7A/C9AfjeAHxjIL43EN8bgJ8Q+EeUf8n+M83/aP6oyB92/rjOXzj+ysxf+r5tyTdevnXMN7++fc8PIH6Eyg+BfozND+J+lZBfhvh1Tn4h5VdqnO2lYNM0TdM0/503270SafPZoLcAAAAASUVORK5CYII="

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "amazon_ads_leftarrow.png"

    .line 125
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgBAMAAAAQtmoLAAAAGFBMVEUAAAAzMzMzMzMzMzMzMzMzMzMzMzMzMzOW6p+xAAAACHRSTlMAmTkdj2BzVg1F16EAAABtSURBVHhe7dexCcAwDAVRow0+RHatDbJDFsj+02SAQMIVqvyvFw9jDPL4yzkXNwQqISAxoqSEACNKkhYEdEHgODcDDBgw8N18AXAgBIVqHwg1HJoRE18cfz17ESZMmFh8DWVE8lUaVdnwHXDOPfezMoezhMEMAAAAAElFTkSuQmCC"

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "amazon_ads_refresh.png"

    .line 126
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAANlBMVEUAAAAzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzN4uB2OAAAAEnRSTlMAOQBghplDEzBNc498ViYdCmmYk9FbAAACKklEQVR42u3YW47DIAxA0WJweCWG7H+z83KFRDtAYDxfuQvwaSs3Cjzu7u7u/i8Fv/SAP0kbWUAjigIb/gVgndchRMQ9hGMjKCn8LK0B7jBYFTYLZT7SAmCPiG/bFc9fAqzG34ueGPeTQNbYawlwEQc7ZoB84nBhAkg7igIpVjvjHS87KW1qwDSB/vxd5Wq5fGU0gP78QPBS3qeBev5O8KZ6f+0lIJvehmusoktA2c9IjfnTwFaWIw3Ox+0CkCNyJsO71Piz4tH8fDE15s8DCZ/R+HwM48DZ/lA2fHX6nxx9lwCGAYvcDjP1AY0cCQHPFdIgAzjkrBCgy1bIAIYBJQOUHcpCgCq/kAzgGfBSQGCApAErBRgGYKpElDoAzgLJ8HaMAeYykFEYsBcAE0K4DNAgkICbBXQDWEox4KUAz8AmBJRHgBSAXBYCXNlvGUAzoIWAjJwTAjxyWQbI5V1HBjiQIxkglbPmMECfbf67I/wU+XW1cR5U40DEN+25fd4xMA4EfC3mzoGLloD+eeeEC4Aenb9VX3AU8P359X2SgyWAehcyB1wCHHKNl+18YOmEawB1j9nZx2qDV4CoXfUNdfMf0gcA62LwjgiASPl6iXWGKWDhRrAPRBwtOpgBAg52ZpAEDAHMAfq5Hso0xiuAWcCX9XMnvk0TwBJQ1ju/3JQa7TLACuDqB5wl7583OcTDVwDi+Y1WgZhAEsgxgSgADoQBuIEbuIEb4D4A2RZZYdY+2OsAAAAASUVORK5CYII="

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "amazon_ads_rightarrow.png"

    .line 127
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAGFBMVEUAAAAzMzMzMzMzMzMzMzMzMzMzMzMzMzOW6p+xAAAACHRSTlMAmTkdj2BzVg1F16EAAABuSURBVHja7Zi5DcAwEMMi5fH+G2cFOwELA+QAZHG4RoeIiMgn7sL+pLA/KexPCvrRwkjYwnlZsGDBggULFizMFZ78o3QgpQMpHUh3D3TzIxd5NP369evXr1+/fmAUBGZNolB+WkYLxed9ERGRVV4maQYdnOq4ugAAAABJRU5ErkJggg=="

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAAFgAAABYCAYAAABxlTA0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpEQjk0QkEzNUMyMjA2ODExOEMxNEU2NTY4RjBGMEU3QSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpCNjc2ODk1NUFGN0IxMUUzQjIyNTkwRjdBQkU4RDI2NSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpCNjc2ODk1NEFGN0IxMUUzQjIyNTkwRjdBQkU4RDI2NSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6REI5NEJBMzVDMjIwNjgxMThDMTRFNjU2OEYwRjBFN0EiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6REI5NEJBMzVDMjIwNjgxMThDMTRFNjU2OEYwRjBFN0EiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6C5CBRAAAI0klEQVR42uyd2VNTdxTHf2GXACLEBYGGkQFFW6BQtxm39kV0apextp0+1PoCdrQz1nGZ/gGdjkvVB2yBF/WlY2vXcabyVhFa0CGU0pZSKBkVEBUXCASJEOj5Jr84GBOycJffTfKdOd5cCIm/T07O/W33HN3U1BQTQZWVldF0yCNbyu05smyyNLJ5ZHFkSWTjZFayIbJRshGyHm4dZP+Sde3du9cuQrt0agEmoDo6rCB7mWwd2YspKSlJqampDJaUlOSwhIQEFhcXx2JiYhwGTUxMOOzx48dsbGyMjYyMOGxwcNBhFosF0H8nayD7hexvAj4VFoAJbA4dtsOSk5NzFi9ezDIyMtj8+fNZfHy8JO8B8Hfv3mX9/f3s1q1bbHh4+Dr9+DsYgb4ecoAJKlzvNbKd5JEvGY1G3ZIlS1h6eroijXz48CG7ceMGM5vNU6Ojoyb60Tmynwj2hKYBE9hYOrxNtoe8NCc/P59lZmayqKgoVcIS2gqP7ujogHfDk0+TfUOgxzUFmMBGcbAHs7KyMgoLC1laWhoTSQ8ePGBtbW2st7e3n06PcdCTwgMmuEV0OEpAX1i1ahUzGAxMZN27d481Nzfj+CedHiLIfwgJmIeDw3TFLy8qKopBONDpdEwr6u7uZi0tLRM2m62GTo9IFTYkAUxw0WetonBQvHr1ajZnzhymRaHL19TUhLABL64gyDdVB0xwy6Kjo0+VlpamwGtDQZ2dncxkMlnsdvs+glyrCmA+UDig1+v3bdiwQadUl0sp3b9/n9XV1THq1p2k0+PBDlSCAsyHtScI6o5NmzZpNiT40qNHj9jly5cB+wKd7g9m+B0wYH4xq6J+7ZaNGzc+Gb6GqjAkhydTv/kSne4O9OIXEGDuudU0WNhKYYFR7GXhIIrF7MqVK6yvrw+QywPx5KgA4CLmniLP3QrPDRe4ENqKNuNbCwachbSA0celQcN2vJFaQ101hTaj7WBAp59ICpg+sW2JiYkfhUPMnUloOy7qxGIPmEgCmF4oj74iJwiuLlR7C4EI89Pr16/XkUefJDb5swJML4BVhCoaROhDrZ87G2Huuri4OJEefskZBe3Bh2j4WxAqIzQptXz5cky9FuDaFBRg+mQK4+PjK9asWROh6UVr167FKkw5n0H0HzCfzz1SUlISjZgTkfd4DEZgxZn57cHvUnekKDc3N0LRh8CIWBWCmV8jOfok4LKNmzdvXohgPhvV1NQkevp5eXn5qBow5Pr/YNK+trb2DqIGjfLGfHnw+3RhmzXcYBqqBlwphFUbMKOHO2cMEXwi50OsoWm5wWq8F2e2mzP06sFvLFq0aKFSC5RKNFypDxLMwA4MZwK8a9myZSHz1VU6FHF2uzwCJtcuoG5HMXbahEJ8VCPOgx0YgqUnD37LaDRKOlMWyNVZSiCBvJaUPRqwA0OwfAown998FduZpJbSkNWC6xJnuM01Z+xy14Lk5ORsuSZ0lIKsNlwIDIllFqYrpgN+Re7YKzdkEeC6hP13zLkt9wngddhCKrfkgiwSXIi6aw6m+CeaRiGYrPh05cqVcUqsVpSWlo6bTKZYf56L5+H5WoILYZ9ze3t7+rVr176AB+dSzEiSavOzkp4sIlwXYOzWp4d5ALyCThTv+84WsqhwXcJtEOg8AHDe3LlzmRoKFrLocKF583DfDlsKwEY1PDhYyFqAC+EGHlI2AGeqCVguEGrChfR6vaPHBsAGEZaFpASiNlyIMzUAcKqSPQi5wYgA19WTAFsAjhdpK9RsAIkC1zHAcO7diwNZfWxsLBNJwYASCS7EB21JADzOIpJNADwyPi4WY7kne5QQNm6TrA7Ak5OTmoYrImRs2ibZHIBtNpvm4YoGmTMdBOBB3B8WCnBFgsyZDgDwTYvFEjJwRYFstSJnCLsOwP+pCTjQuQW1FlIDFRKEgC0Adw8NDWkCbjB9XrUgI0cFyewArIYHz3ZWTHTISG3j8mDz8PDwkJI9CammHEWFjJQ25LRDDg/mN9U1DgwMaAquyJCRL4jUBLauWZ4GJBDSGlxRId++fRuHetdQGfoVuWy0CFdEyH19fTj8Nh1wJ8XhXtzCr0W4IkEGQ7BkzgR5TsA8F8JFs9msWbiiQOYML7ryS0yfaf8WucWknPhRa4FSLchgB4bMmQSPPQWYiP9D4+dWuWOx3HDlfE1fAjswJJbtzwDmOoOkbVqHqxZkzu7M9J+5A/6Ruhh3kLRN63CVhgxmYAeGXgHzdClVyIgXKg1X6r04s2r3lDOelpPP9fb23sHNdaHy1ZX7PcEKzOjhWfffeczZU1lZ+Z7BYDheVlbGIvKt2tpaQD5A3vuV+++8bYg4T3/QhnSDEfnu9/K8l+c9/d4jYJ6F9HBLS4tdhOUkUQU2JpMJk2WHvGVu9bqlB1lIbTZbNXI5RuRZjY2NWNysniljq689U0coeLd2dXVFaLqpvb0dkzqtYDTT82YEzLscFc3NzRal+sZaEObOW1tbsQzkMxOgz11/9AI9drv947q6uqlIPHbG3YaGhqnJycn9/qS/9WtbJb3QJavVehqJMvmWoLAU2g4GYEFMfvbnbwLZt/oZdUe+R6JMkbZaKSW0GfkrwQAs/P27YJKD1mRmZm4Jt+Sg9fX1GK0FnBw0kt7Wj7DA09siE3aFrOltp0EG1c/DKEHzt8yZoDngC1AkxbgXoVsKz6ULmvIpxt1AR5LkywmYQ3aUecjOzi5GcRItl3m4evUq6+npEafMg9vFT7OFSjArRl4rZqESN9BIlHksLS3teY2V2vmLTg8KW2rHDbKWikVhn9NRppViUR7CxjvMWe7MKFi5M8TXSrKvNVfuzEu/+XWyDxISEkpQsA9ZS5Xy6mkF+xgv2HeWhULBPi+wc+iwg+zN6SUnFyxY4KjdKYW8lJz8gexCSJacnGGg8kzRVCSyQLYQpAMIpGgqbjrBrnJ4a1gXTfUxkYSyv0gAibK/2ezpsr/ID+DaR4YleExO40YIrAS4yv5iRyO21whT9vd/AQYAUtoIjyiHwgUAAAAASUVORK5CYII="

    invoke-direct {p0, v0, v3, v1}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAFgAAABYCAYAAABxlTA0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpEQjk0QkEzNUMyMjA2ODExOEMxNEU2NTY4RjBGMEU3QSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpBMTc3QTQzMUFGN0IxMUUzQjIyNTkwRjdBQkU4RDI2NSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpBMTc3QTQzMEFGN0IxMUUzQjIyNTkwRjdBQkU4RDI2NSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6REI5NEJBMzVDMjIwNjgxMThDMTRFNjU2OEYwRjBFN0EiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6REI5NEJBMzVDMjIwNjgxMThDMTRFNjU2OEYwRjBFN0EiLz4gPC9yZGY6RGVzY3Jp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"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_ads_open_external_browser.png"

    .line 130
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "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"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/device/ads/Assets;->writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->access$000(Lcom/amazon/device/ads/Assets$CircuitBreaker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeBase64EncodedAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p2}, Lcom/amazon/device/ads/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/Assets;->writeAssetToDisk(Lcom/amazon/device/ads/Assets$CircuitBreaker;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized ensureAssetsCreated()Z
    .locals 9

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->baseFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/amazon/device/ads/Assets;->getBaseFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Assets;->baseFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 92
    monitor-exit p0

    return v1

    .line 96
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 97
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v4, "mraid-assets-version"

    invoke-virtual {v0, v4, v1}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    .line 101
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Writing assets to disk: version %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/amazon/device/ads/Assets;->writeAssetsToDisk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v1, "mraid-assets-version"

    invoke-virtual {v0, v1, v5}, Lcom/amazon/device/ads/Settings;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return v1

    .line 112
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v2

    .line 113
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_CREATED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_ENSURED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getBaseFilePath()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/Assets;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/Assets;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/Assets;->baseFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
