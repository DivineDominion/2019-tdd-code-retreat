package macoun

import org.junit.jupiter.api.Test
import kotlin.test.assertEquals
import kotlin.test.assertNotEquals

/*
 * Copyright (c) 2019 by Oliver Boehm
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express orimplied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * (c)reated 04.10.19 by oliver (ob@oasd.de)
 */
internal class FeldTest {

    val feld = Feld(1,2)

    @Test
    fun getX() {
        assertEquals(1, feld.x);
    }

    @Test
    fun equals() {
        val a = Feld(1, 2)
        val b = Feld(3, 4)
        val c = Feld(3, 4)
        assertNotEquals(a, b)
        assertEqualsAndHash(b, c)
    }

    private fun assertEqualsAndHash(a: Any, b: Any) {
        assertEquals(a, b);
        assertEquals(b, a);
        assertEquals(a.hashCode(), b.hashCode());
    }

}